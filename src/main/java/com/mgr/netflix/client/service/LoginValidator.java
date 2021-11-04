package com.mgr.netflix.client.service;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.mgr.netflix.client.vo.ClientLoginVO;

public class LoginValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return ClientLoginVO.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "required");
		
	}
	
}
