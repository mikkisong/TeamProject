package com.itwill.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.itwill.domain.ScdCodeBean;

public interface UtilService {

	public String getCode(String paramData) throws JsonProcessingException;

}
