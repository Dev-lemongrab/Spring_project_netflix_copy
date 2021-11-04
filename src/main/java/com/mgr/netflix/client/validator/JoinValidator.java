package com.mgr.netflix.client.validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.mgr.netflix.client.vo.ClientPaymentVO;

public class JoinValidator implements Validator {

	private static final String cardNumExp = "\\d{16}";
	private static final String expireDateExp = "(0[1-9]|10|11|12)/[0-9]{2}$";
	private static final String YearExp="\\d{4}";
	private Pattern pattern;
	private Pattern pattern_ex;
	private Pattern pattern_Year;
	//패턴객체
	public JoinValidator() {
		pattern = Pattern.compile(cardNumExp);//
		pattern_ex = Pattern.compile(expireDateExp);
		pattern_Year = Pattern.compile(YearExp);
	}
	@Override
	public boolean supports(Class<?> clazz) {
		return ClientPaymentVO.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ClientPaymentVO clientPaymentVO = (ClientPaymentVO)target;
		
		if(clientPaymentVO.getCardNum()==null || clientPaymentVO.getCardNum().trim().isEmpty() ) {
			errors.rejectValue("cardNum", "required");
		}else {
			Matcher matcher=pattern.matcher(clientPaymentVO.getCardNum());
			if(!matcher.matches()) {
				errors.rejectValue("cardNum", "bad");
			}
		}
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "expireDate", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "birthYear", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "birthMonth", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "birthDay", "required");
		
		if(!clientPaymentVO.getExpireDate().isEmpty()) {
			Matcher matcher=pattern_ex.matcher(clientPaymentVO.getExpireDate());
			if(!matcher.matches()) {
				errors.rejectValue("expireDate", "bad");
			}
		}
	
		if(!clientPaymentVO.isPersonalInfoGateway()) {
			errors.rejectValue("personalInfoGateway", "required");
		}
		if(!clientPaymentVO.isCancelMembershipAnytime()) {
			errors.rejectValue("cancelMembershipAnytime", "required");
		}
		if(!clientPaymentVO.isPersonalInfoAbroad()) {
			errors.rejectValue("personalInfoAbroad", "required");
		}
		if(!clientPaymentVO.isPersonalInfoThirdParties()) {
			errors.rejectValue("personalInfoThirdParties", "required");
		}
		if(!clientPaymentVO.isTermsOfUse()) {
			errors.rejectValue("termsOfUse", "required");
		}
		
		if(!clientPaymentVO.getBirthYear().isEmpty()) {
			Matcher matcher = pattern_Year.matcher(clientPaymentVO.getBirthYear());
			if(!matcher.matches()) {
				errors.rejectValue("birthYear", "required");
			}else{
				int validateYear = Integer.parseInt(clientPaymentVO.getBirthYear());
				if(!(validateYear>=1900 && validateYear <= 2004)) {
					errors.rejectValue("birthYear", "bad");
				}
			}
		}	
		
		
	}
}