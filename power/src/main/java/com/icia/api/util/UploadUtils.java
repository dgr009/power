package com.icia.api.util;

import java.awt.image.*;
import java.io.*;
import java.text.*;
import java.util.*;

import javax.imageio.*;
import javax.servlet.*;

import org.imgscalr.*;
import org.springframework.util.*;
import org.springframework.web.multipart.*;

import com.icia.api.vo.*;

public class UploadUtils {
	private static boolean isImage(String name) {
		String ext = name.substring(name.lastIndexOf(".") + 1).toLowerCase();
		if (ext.equals("jpg") || ext.equals("png") || ext.equals("jpeg") || ext.equals("gif")) {
			return true;
		}
		return false;
	}

	// 자바의 예외 : 체크하는 예외, 체크하지 않는 예외(RuntimeException의 자식들)
	// 예외를 통해 프로그래머에게 예외 처리가 필요한 경우 가르쳐준다.
	// -> 너무 자주 뜨다 보니까 너무 가볍게 본다
	private static String makeThumnail(String realPath, String fileName) throws IOException {
		// 업로드한 파일이 이미지인 경우 썸네일을 만들어서 저장
		BufferedImage src = ImageIO.read(new File(realPath + "/" + fileName));
		BufferedImage dest = Scalr.resize(src, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT, 100);
		// file이름을 변경 : s-20170426141622-img.jpg
		String thumnailName = "s-" + fileName;
		File newFile = new File(realPath + "/" + thumnailName);
		ImageIO.write(dest, "JPG", newFile);
		return thumnailName;
	}

	public static Users storeAndGetName(Users user, MultipartFile file, ServletContext ctx, String path) {
		// 사진파일을 저장할 하드디스크의 경로명 : ctx.getRealPath(path) 로 얻어온다
		// file이름 변경 (년월일시분초 들어가게 바꿈) : 20170426141622-img.jpg
		// file을 경로에 저장하고 user에 파일 이름을 set
		String realPath = ctx.getRealPath(path);
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd-hhmmss");
		String fileName = sdf.format(date) + "-" + file.getOriginalFilename();
		File target = new File(realPath, fileName);
		try {
			FileCopyUtils.copy(file.getBytes(), target);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//user.setImg(fileName);
		if (isImage(fileName)) {
			try {
				makeThumnail(realPath, fileName);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return user;
	}

}
