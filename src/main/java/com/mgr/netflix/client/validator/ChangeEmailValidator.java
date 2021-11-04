package com.mgr.netflix.client.validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.mgr.netflix.client.vo.ChangeEmailVO;

public class ChangeEmailValidator implements Validator{
	private static final String emailExp = "^[_a-z0-9-]+(.[_a-z0-9-]+)*@(?:\\w+\\.)+\\w+$";
	private Pattern pattern;
	
	public ChangeEmailValidator() {
		pattern=Pattern.compile(emailExp);
	}
	@Override
	public boolean supports(Class<?> clazz) {
		return ChangeEmailVO.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ChangeEmailVO changeEmailVO = (ChangeEmailVO)target;
		
		if(changeEmailVO.getNewEmail()==null||changeEmailVO.getNewEmail().trim().isEmpty()) {
			ValidationUtils.rejectIfEmptyOrWhitespace(errors, "newEmail", "required");
		}else {
			Matcher matcher = pattern.matcher(changeEmailVO.getNewEmail());
			if(!matcher.matches()) {
				errors.rejectValue("newEmail", "bad");				
			}
		}
		
	}
	
	
}
