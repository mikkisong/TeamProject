package com.itwill.service;

import java.util.Map;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.itwill.domain.ScdCodeBean;

public interface UtilService {

	public String getCode(String paramData) throws JsonProcessingException;

	public String getJson(Map<String, Object> map);

	public Map<String, Object> getMap(String paramData);

}
