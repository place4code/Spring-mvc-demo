package com.place4code.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/hello") //parent mapping
public class HelloWorldController {

	@RequestMapping("/showForm")
	public String showForm() {
		return "helloworld-form";
	}
	
	@RequestMapping("/processForm")
	public String processForm(@RequestParam("studentName") String value, Model model) {
		//					    ^^ parameter binding ^^
		//to do
		value = value.toUpperCase();
		//add to the model
		model.addAttribute("nameOfAttribute", value);
		
		//return the view
		return "helloworld";
	}
	
}
