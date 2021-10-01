package com.naturalskin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.naturalskin.dao.MemberDao;

@Component
public class MemberService {
	@Autowired
	private MemberDao memberDao;
}
