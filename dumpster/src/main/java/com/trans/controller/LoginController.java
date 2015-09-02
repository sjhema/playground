package com.trans.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/dumpster")
public class LoginController {
	
	@RequestMapping("/login.do")
	public String displayHome(HttpServletRequest request, ModelMap model) {
		return "login";
	}
}
