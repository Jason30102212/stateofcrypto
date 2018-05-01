package com.stateofcrypto.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("/")
	public String showHome() {	
		return "home-page";
	}

	@GetMapping("/showMyLoginPage")
	public String showMyLoginPage() {
		return "login-form";
	}
}
