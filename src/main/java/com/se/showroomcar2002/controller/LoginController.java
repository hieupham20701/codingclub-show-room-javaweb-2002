package com.se.showroomcar2002.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

	@GetMapping("/login")
	public String showLogin() {
		return "jsp/login";
	}
}
