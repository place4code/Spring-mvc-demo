package com.place4code.springdemo.mvc.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CourseCodeConstraintValidator
implements ConstraintValidator<CourseCode, String> {

	private String prefix;
	
	@Override
    public void initialize(CourseCode code) {
        prefix = code.value();
    }
	
	@Override
	public boolean isValid(String code, ConstraintValidatorContext context) {

		boolean result;
		
		if(code != null) {
			result = code.startsWith(prefix);
		} else {
			return true;
		}
		return result;
		
	}

}
