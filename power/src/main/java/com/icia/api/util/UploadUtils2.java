package com.icia.api.util;

import java.io.*;

import javax.servlet.*;

import org.springframework.util.*;
import org.springframework.web.multipart.*;

public class UploadUtils2 {
	//이미지 파일 여부 확인 - 썸네일 필요
	//썸 네일 만들기 - 유저의 사진
	
	public static String storeAndGetFileName(MultipartFile f, ServletContext c,String p){
		String fileName = System.currentTimeMillis() + "-" + f.getOriginalFilename();
		//String str[] = fileName.split("-");
		String realPath = c.getRealPath(p);
		File target = new File(realPath,fileName);
		try {
			FileCopyUtils.copy(f.getBytes(), target);
			//파일의 끝에는 EOF(End Of File)표시 : -1
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fileName;
	}
}
