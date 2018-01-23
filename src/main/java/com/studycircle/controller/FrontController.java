package com.studycircle.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 
 * @author Shivshanker Mhadiwale
 *
 */
@Controller
public class FrontController {
	
	@RequestMapping(value = { "/", "/welcome" }, method = RequestMethod.GET)
	public String welcome(Principal principal, Model model) {

		model.addAttribute("userName", principal.getName());
		return "home/home";
	}
	
	@RequestMapping(value = { "/login", "/accessdenied", "/error" }, method = RequestMethod.GET)
	public String login(Model model, String error, String logout) {
		if (error != null)
			model.addAttribute("error", "Your username and password is invalid.");

		if (logout != null)
			model.addAttribute("message", "You have been logged out successfully.");

		return "login/login";
	}

}
