package com.place4code.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloWorldController {

	@RequestMapping("/showForm")
	public String showForm() {
		return "helloworld-form";
	}
	
	@RequestMapping("/processForm")
	public String processForm(HttpServletRequest request, Model model) {
		
		//read the request from HTML form
		String value = request.getParameter("studentName");
		//to do
		value = value.toUpperCase();
		//add to the model
		model.addAttribute("nameOfAttribute", value);
		
		//return the view
		return "helloworld";
	}
	
}
