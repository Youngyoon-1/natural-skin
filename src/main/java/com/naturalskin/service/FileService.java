package com.naturalskin.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.util.ResourceUtils;
import org.springframework.web.multipart.MultipartFile;

@Service
public class FileService {
	private final String savePath = "/Users/anyoungyoon/Documents/academy/springboot/Naturalskin/bin/main/static/upload/";
	private final String extName = ".png";
	
	public String save(List<MultipartFile> multipartFiles, String string) throws IOException {
		StringBuilder builder = new StringBuilder(); //전체 이미지파일 상대경로
		boolean flag = false;						//마지막 쉼표제거를 위한 flag변수
		for(MultipartFile multipartFile: multipartFiles) {
			if(multipartFile.isEmpty()) continue;
			String id = string + "/" + UUID.randomUUID().toString();
			String absolutePath = savePath + id + extName;
			String relativePath = id + extName;
			builder.append(relativePath + ",");
			FileOutputStream fos = new FileOutputStream(absolutePath);
			fos.write(multipartFile.getBytes());
			fos.flush();
			fos.close(); //버퍼에 잔류하고 있는 데이터를 모두 출력시키고 버퍼를 비우는 역할
			flag = true;
		}
		if(flag) {			//마지막 쉼표제거 
			builder.delete(builder.length()-1,builder.length());
		}
		return builder.toString();
	}

	public int delete(String findImgPath) {
		if(findImgPath == null || findImgPath.isEmpty()) return 0;
		String[] pathArr = findImgPath.split(",");
		for(String path:pathArr) {
			System.out.println(path);
			File file = new File(savePath + path);
			if(file.exists()) {
				if(file.delete()) {
					System.out.println("파일을 삭제 성공");
				}else {
					System.out.println("파일 삭제 실패");
				}
			}else {
				System.out.println("파일이 없습니다.");
			}
		}
		return 1;
	}
	
//	public int delete(String delImgPath) {
//	File file = new File(savePath+delImgPath);
//	if(file.exists()) {
//		if(file.delete()) {
//			System.out.println("파일을 삭제 성공");
//			return 1;
//		}else {
//			System.out.println("파일 삭제 실패");
//		}
//	}else {
//		System.out.println("파일이 없습니다.");
//	}
//	return 0;
//}

}