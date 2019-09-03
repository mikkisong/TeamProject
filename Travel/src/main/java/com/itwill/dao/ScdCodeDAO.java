package com.itwill.dao;
import java.util.List;
import java.util.Map;

import com.itwill.domain.ScdCodeBean;

public interface ScdCodeDAO {

	List<Map<String, Object>> getCode(Object obj);
	List<ScdCodeBean> getCodeBean(Object obj);
	List<Object> getCodeObject(Object obj);

	
}
