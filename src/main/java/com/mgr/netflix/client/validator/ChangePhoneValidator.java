package com.mgr.netflix.client.validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;


import com.mgr.netflix.client.vo.ClientPaymentVO;
import com.mgr.netflix.client.vo.ClientVO;
import com.mgr.netflix.client.vo.PhoneChangeVO;

public class ChangePhoneValidator implements Validator{
	private static final String phoneNumExp = "^01([0|1|6|7|8|9])-([0-9]{3,4})-([0-9]{4})$";
	
	//핸드폰번호 정규식
	private Pattern pattern;
	
	//패턴객체
	public ChangePhoneValidator() {
		pattern = Pattern.compile(phoneNumExp);//패턴객체에 이메일 정규식 컴파일
	
	}
	@Override
	public boolean supports(Class<?> clazz) {
		return PhoneChangeVO.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		PhoneChangeVO phoneChangeVO = (PhoneChangeVO)target;
		if(phoneChangeVO.getNewPhone() == null||phoneChangeVO.getNewPhone().trim().isEmpty()) {
			ValidationUtils.rejectIfEmptyOrWhitespace(errors, "newPhone", "required");
		}else {
			Matcher matcher=pattern.matcher(phoneChangeVO.getNewPhone());
			if(!matcher.matches()) {
				errors.rejectValue("newPhone", "bad");
			}	
		}
	}
}
