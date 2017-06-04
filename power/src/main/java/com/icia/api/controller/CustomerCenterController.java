package com.icia.api.controller;

import org.springframework.beans.factory.annotation.*;
import org.springframework.web.bind.annotation.*;

import com.icia.api.service.*;
import com.icia.api.vo.*;
@RestController
@RequestMapping(value="/main")
public class CustomerCenterController {
@Autowired
	private CustomerCenterService service;
//고객센터글작성
	@RequestMapping(value="/customerCenterRegister",method = RequestMethod.POST, produces = "text/html;charset=utf-8")
	public void customerCenterRegister(@RequestBody CustomerCenter c){
		service.customerCenterRegister(c);
	}
//고객센터리스트
	@RequestMapping(value="/customerCenterList",method = RequestMethod.POST, produces = "text/html;charset=utf-8")
	public String customerCenterList(@RequestBody int pageNo){
		return service.customerCenterList(pageNo); 
	}
	//고객센터 업데이트폼
	@RequestMapping(value="/customerCenterUpdateStart",method = RequestMethod.POST, produces = "text/html;charset=utf-8")
	public String customerCenterUpdateStart(@RequestBody int faqNo){
		return service.customerCenterUpdateStart(faqNo);
	}
	//고개센터 업데이트하기
	@RequestMapping(value="/customerCenterUpdate",method = RequestMethod.POST, produces = "text/html;charset=utf-8")
	public void customerCenterUpdate(@RequestBody CustomerCenter c){
		service.customerCenterUpdate(c);
	}
	//고객센터 글보기
	@RequestMapping(value="/customerCenterView",method = RequestMethod.POST, produces = "text/html;charset=utf-8")
	public String customerCenterView(@RequestBody int faqNo){
		return service.customerCenterView(faqNo);
	}
	//고객센터글 삭제
	@RequestMapping(value="/customerCenterDelete",method = RequestMethod.POST, produces = "text/html;charset=utf-8")
	public void customerCenterDelete(@RequestBody int faqNo){
		service.customerCenterDelete(faqNo);
	}
	//공지사항작성
		@RequestMapping(value="/notice/register",method = RequestMethod.POST, produces = "text/html;charset=utf-8")
		public void noticeRegister(@RequestBody MainNotice m){
			service.noticeRegister(m);
		}
	//공지사항리스트
		@RequestMapping(value="/notice/list",method = RequestMethod.POST, produces = "text/html;charset=utf-8")
		public String noticeList(@RequestBody int pageNo){
			return service.noticeList(pageNo); 
		}
		//공지사항 업데이트폼
				@RequestMapping(value="/notice/updateStart",method = RequestMethod.POST, produces = "text/html;charset=utf-8")
				public String noticeUpdateStart(@RequestBody int mainNoticeArticleNo){
					return service.noticeUpdateStart(mainNoticeArticleNo);
				}
		//공지사항 업데이트하기
		@RequestMapping(value="/notice/update",method = RequestMethod.POST, produces = "text/html;charset=utf-8")
		public void noticeUpdate(@RequestBody MainNotice m){
			service.noticeUpdate(m);
		}
		//공지사항 글보기
		@RequestMapping(value="/notice/view",method = RequestMethod.POST, produces = "text/html;charset=utf-8")
		public String noticeView(@RequestBody int mainNoticeArticleNo){
			return service.noticeView(mainNoticeArticleNo);
		}
		//공지사항 삭제
		@RequestMapping(value="/notice/delete",method = RequestMethod.POST, produces = "text/html;charset=utf-8")
		public void noticeDelete(@RequestBody int mainNoticeArticleNo){
			service.noticeDelete(mainNoticeArticleNo);
		}
	
}
