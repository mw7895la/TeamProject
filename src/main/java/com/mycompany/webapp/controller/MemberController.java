package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")
public class MemberController {

	@GetMapping("/login")
	public String loginForm() {
		return "login";
	}
	
	@GetMapping("/join")
	public String joinForm() {
		return "join";
	}
}
