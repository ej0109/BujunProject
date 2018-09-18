package com.bujun.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BasicController {

	@RequestMapping("/")
	public String Main() {
		return "user/main/index";
	}

	
	@RequestMapping("/test")
	public String Test() {
		return "user/main/test";
	}
}
