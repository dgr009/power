package com.icia.palette.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.awt.List;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.*;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import org.slf4j.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.icia.palette.service.*;
import com.icia.palette.util.*;
import com.icia.palette.vo.*;

@Controller
@RequestMapping(value="/miniHome")
public class ProductController {
	private static final Logger logger = LoggerFactory.getLogger(UsersController.class);
	@Autowired
	private ServletContext ctx;
	@Resource(name="path")
	private String path;
	@Autowired
	private ProductService service;
	
	//미니홈페이지 메인
	@RequestMapping(value="/{userId}/main",method=RequestMethod.GET)
	public String miniMain(@PathVariable String userId,Model model){
		model.addAttribute("kind", service.productKind(userId));
		model.addAttribute("item", service.getMain(userId));
		model.addAttribute("userId", userId);
		return "products/Main";
	}
	//상품등록창으로
	@RequestMapping(value="/{userId}/admin/register",method=RequestMethod.GET)
	public String productRegister(@PathVariable String userId,Model model){
		model.addAttribute("result",service.productRegisterReady(userId));
		model.addAttribute("kind", service.productKind(userId));
		return "products/ProductRegister";
	}
	//상품수정하기폼으로
	@RequestMapping(value="/{userId}/admin/productUpdate/{itemNo}",method=RequestMethod.GET)
	public String productUpdateStart(@PathVariable String userId,@PathVariable int itemNo,Model model){
		model.addAttribute("kind",service.productRegisterReady(userId));//홈페이지small가져오기
		model.addAttribute("userId", userId);
		model.addAttribute("result", service.productMain(itemNo));//상품정보다가져오기
		System.out.println(service.productRegisterReady(userId).get("kind"));
		return "products/ProductUpdate";
	}
	//상품수정하기
	@RequestMapping(value="/{userid}/admin/productUpdate/{itemNo}",method=RequestMethod.POST)
	public String productUpdateEnd(@PathVariable String userid,@PathVariable int itemNo,@ModelAttribute Item item,@RequestParam String optionName,@RequestParam String optionNo,MultipartHttpServletRequest req
			) throws IOException{
		System.out.println("여기와봐");
		ArrayList<String> fileName=new ArrayList<String>();
		Iterator<String> it=req.getFileNames();
		java.util.List<Map<String, Object>> itemList=new ArrayList<Map<String,Object>>();
		ArrayList<String> option=new ArrayList<String>();
		String[] optionList=optionName.split(",");
		String[] optionNoList=optionNo.split(",");
		Map<String, Object> itemMap=new HashMap<String, Object>();
		itemMap.put("itemPrice", item.getItemPrice());
		itemMap.put("itemNo",item.getItemNo());
		itemMap.put("itemName", item.getItemName());
		itemMap.put("smallKind", item.getSmallKind());
		itemMap.put("itemContent", item.getItemContent());
		itemList.add(itemMap);
		for (int i=0;i<optionList.length;i++) {
			Map<String, Object> optionMap=new HashMap<String, Object>();
			optionMap.put("optionNo", optionNoList[i]);
			optionMap.put("optionName",optionList[i]);
			itemList.add(optionMap);
		}
		while (it.hasNext()) {
		 String imgName=it.next();
			fileName.add(imgName);
		}
		for(int i=0;i<fileName.size();i++){
			Map<String, Object> map=new HashMap<String, Object>();
			MultipartFile f=req.getFile(fileName.get(i));
			if(!f.getOriginalFilename().equals("")){
			System.out.println("바꾼이름"+f.getOriginalFilename());
			String name=UploadUtils2.storeAndGetFileName(f, ctx, path);
			map.put("originalName", fileName.get(i));
			map.put("fileName", name);
			itemList.add(map);
			}
		}
		service.productUpdate(itemList);
		String a="redirect:/miniHome/"+userid+"/admin/registerList";
		return a;
	}
	
	//상품등록하기
	@RequestMapping(value = "/{userId}/admin/register", method = RequestMethod.POST)
	public String productRegister(@ModelAttribute Item item,@PathVariable String userId, MultipartHttpServletRequest req) throws IOException {
		item.setUserId(userId);
		 ArrayList<com.icia.palette.vo.ItemImg> list=new ArrayList<com.icia.palette.vo.ItemImg>();
		 java.util.List<MultipartFile> mw=req.getFiles("imgName");
		
		for (int i=0;i<mw.size();i++) {
			MultipartFile f=mw.get(i);
		String fileName= com.icia.palette.util.UploadUtils2.storeAndGetFileName(f, ctx ,path);
		 list.add(new com.icia.palette.vo.ItemImg(fileName));
		 }
		item.setItemImgList(list);
		System.out.println("메인에서 이름"+item.getItemName());
		service.productRegister(item);
		String a="redirect:/miniHome/"+userId+"/admin/registerList";
		return a;
	}
	
	//상품등록리스트
	@RequestMapping(value = "/{userId}/admin/registerList", method = RequestMethod.GET)
	public String productRegisterList(@PathVariable String userId,@RequestParam(defaultValue = "1") int pageNo,Model model) {
		model.addAttribute("result", service.productRegisterList(userId,pageNo));
		model.addAttribute("userId", userId);
		model.addAttribute("kind", service.productKind(userId));
		return "products/ProductRegisterList";
	}
	//상품삭제하기
	@RequestMapping(value = "/{userId}/admin/productDelete/{itemNo}", method = RequestMethod.GET)
	public String productDelete(@RequestParam int itemNo,@PathVariable String userId) {
		service.productDelete(itemNo);
		String a="redirect:/miniHome/"+userId+"/admin/registerList";
		return a;
	}
	//상품주문자리스트
	@RequestMapping(value = "/{userId}/admin/productOrderList/{itemNo}", method = RequestMethod.GET)
	public String productOrderList(@PathVariable String userId,Model model,@PathVariable int itemNo,@RequestParam(defaultValue="1") int pageNo ) {
		model.addAttribute("result", service.productOrderList(itemNo,pageNo));
		model.addAttribute("itemNo",itemNo);
		model.addAttribute("kind", service.productKind(userId));
		return "products/ProductOrderList";
	}
	//상품보기
	@RequestMapping(value = "/{userId}/productMain/{itemNo}", method = RequestMethod.GET)
	public String productMain(@PathVariable String userId,Model model,@PathVariable int itemNo) {
		model.addAttribute("userId",userId);
		model.addAttribute("result", service.productMain(itemNo));
		model.addAttribute("kind", service.productKind(userId));
		return "products/ProductMain";
	}
	//배송입력
		@RequestMapping(value = "/admin/insertDelivery", method = RequestMethod.POST)
		public String deliveryInsert(HttpSession sesstion,@RequestParam int orderNo,@RequestParam int deliNo,@RequestParam String itemNo) {
			Users user=(Users) sesstion.getAttribute("user");
			HashMap<String, Object> map=new HashMap<String, Object>();
			map.put("orderNo", orderNo);
			map.put("deliNo", deliNo);
			
			System.out.println("여기값모냐"+itemNo);
			service.deliveryInsert(map);
			String a="redirect:/miniHome/"+user.getUserId()+"/admin/productOrderList/"+itemNo;
			return a;
		}
		//상품주문하기페이지로
		@RequestMapping(value = "/{userId}/productOrder/{itemNo}", method = RequestMethod.GET)
		public String productOrder(@PathVariable String userId,@PathVariable int itemNo,@RequestParam String itemOption,@RequestParam int itemPrice,@RequestParam String itemName,@RequestParam int itemSize,int itemInven,Model model) {
			model.addAttribute("itemSize", itemSize);
			model.addAttribute("itemOption", itemOption);
			model.addAttribute("itemName", itemName);
			model.addAttribute("itemPrice", itemPrice);
			model.addAttribute("itemNo", itemNo);
			model.addAttribute("kind", service.productKind(userId));
			model.addAttribute("result", service.productMain(itemNo));
			model.addAttribute("itemInven", itemInven);
			model.addAttribute("userId", userId);
			
			return "products/ProductOrder";
		}
		//상품주문
		@RequestMapping(value = "/{userId}/productOrder/{itemNo}", method = RequestMethod.POST)
		public String productOrderEnd(@PathVariable int itemNo,@PathVariable String userId,@ModelAttribute OrderStatement o,HttpSession session) {
			System.out.println(o.toString());
			service.productOrder(o);
			Users user=(Users) session.getAttribute("user");
			int orderPrice=o.getOrderPrice();
			user.setUserPoint(user.getUserPoint()-orderPrice);
			session.setAttribute("user", user);
			String a="redirect:/miniHome/"+userId+"/main";
			return a;
		}
	//상품종류로 상품검색
		@RequestMapping(value = "/{userId}/productKind/{smallKind}", method = RequestMethod.GET)
		public String productSelectKind(@PathVariable String userId,@PathVariable String smallKind,Model model,@RequestParam(defaultValue="1") int pageNo) {
			Map<String, Object> map=new HashMap<String, Object>();
			map.put("userId", userId);
			map.put("smallKind",smallKind);
			map.put("pageNo", pageNo);
			model.addAttribute("userId", userId);
			model.addAttribute("smallKind", smallKind);
			model.addAttribute("result", service.productSelectKind(map));
			model.addAttribute("kind", service.productKind(userId));
			return "products/ProductKind";
		}
	
}
