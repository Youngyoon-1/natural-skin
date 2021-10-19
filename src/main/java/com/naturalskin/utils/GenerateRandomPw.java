package com.naturalskin.utils;

import java.util.ArrayList;

import org.springframework.stereotype.Component;

@Component
public class GenerateRandomPw {
	
	private String randomPw = "";
	private final int pwLength = 5; //기본값 5로 설정
	
	public String init() {
		randomPw = "";
		for( int i = 0; i < pwLength; i++) {
			randomPw += (int)(Math.random() * 10);
		}
		return randomPw;
	}
}
