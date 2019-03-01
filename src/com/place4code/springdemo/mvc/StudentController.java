package com.place4code.springdemo.mvc;

import javax.validation.Valid;

import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
public class StudentController {
	
	//preprocessor
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		StringTrimmerEditor editor = new StringTrimmerEditor(true); // true = to null
		binder.registerCustomEditor(String.class, editor);
	}

	@RequestMapping("/showForm")
	public String showForm(Model model) {
		
		//create new student object
		Student student = new Student();
		
		//add student object to the model
		model.addAttribute("student", student);
		
		return "student-form";
	}
	
	@RequestMapping("/processForm")
	public String processForm(
			@Valid @ModelAttribute("student") Student student, 
			BindingResult result) {
		
		//log the input data
		System.out.println("student: " + student.getFirstName() +
				", house: " + student.getCountry() + ", sex: " + student.getSex());
		System.out.println("Binding result: " + result);
		
		if(result.hasErrors()) {
			return "student-form";
		} else {
			return "student-confirmation";
		}
		
	}
	
}
