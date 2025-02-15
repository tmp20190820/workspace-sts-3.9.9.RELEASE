package com.sts.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sts.dao.Tmp1DAO;

@Controller
public class Tmp1Controller { // Word Controller
	@Autowired
	Tmp1DAO tmp1DAO;
	
	@RequestMapping(value = "/1.do", method = RequestMethod.GET) // 페이지 진입
	public String tmp1page1() { // 카드 페이지
		return "tmp1-1";
	}
	
	@RequestMapping(value = "/2.do", method = RequestMethod.GET) // 페이지 진입
	public String tmp1page2(Model model) { // 카드 리스트 페이지
		model.addAttribute("list", tmp1DAO.selectWordList());
		return "tmp1-2";
	}
	
}
