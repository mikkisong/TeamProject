package com.itwill.service;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.inject.Inject;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.itwill.dao.ScdCodeDAO;
import com.itwill.dao.UtilDAO;
import com.itwill.domain.JsonDataBean;
import com.itwill.domain.ScdCodeBean;


@Service
public class UtilServiceImpl implements UtilService {
	
	@Inject
	private UtilDAO utildao;
	
	@Inject
	private ScdCodeDAO scddao;
	
//	@Inject
	private ObjectMapper mapper = new ObjectMapper();
	
	private String control_type;  // 컨트롤 타입
	private String first_item_type;// 셀렉트 박스 일때 전체 혹은 선택 표시 뜨도록
	private String control_id; // 만들어지는 아이디값
	private String bean_type; // 사용할 빈 타입
	
	
	@Override
	public String getCode(String paramData) throws JsonProcessingException{
		System.out.println("UtilServiceImpl getCode!!!");
		JsonDataBean json = new JsonDataBean();
		
		// 공퉁 부분이라서 param 값을 가지고 사용항 Bean 객체를 항당 하여  List<Object> 형태로 리턴 받음 
		List<Map<String, Object>> list = setData(paramData);
		
		// 데이터를 가공함
		String jsonStr = getData(list);
		//System.out.println("jsonStr 가공전 : " + jsonStr);
		
		// 가공된 데이터를 JsonDataBean 객체에 할당
		json.setData(jsonStr);
		
		// JsonBean 객체의 내용을 json 형식으로 변경
		jsonStr = mapper.writeValueAsString(json);
		return jsonStr;
	}
	
	// param를 받아서 변수 활당 및 실제 데이터를 List<Map<String, Object>> 형식으로 리턴
	public List<Map<String, Object>> setData(String paramData) {
		//System.out.println("Object setData paramData : " + paramData);
		
		// paramData 데이터를 Map 형식으로 리턴
		Map<String, Object> map = getMap(paramData);
		
		if(map.get("control_type")!=null) {
			control_type = map.get("control_type").toString();
		}
		if(map.get("first_item_type")!=null) {
			first_item_type = map.get("first_item_type").toString();
		}
		if(map.get("control_id")!=null) {
			control_id = map.get("control_id").toString();
		}
		if(map.get("type")!=null){
			bean_type = map.get("type").toString();
		}
		
		// bean_type 가 code 일경우는 ScdCode 데이터를 가져 오는것으로 판단 데이터 가져 와서 리턴
		if(bean_type.equals("code")) {
			ScdCodeBean code = new ScdCodeBean();
			if(map.get("code")!=null) {
				code.setCode(map.get("code").toString());
			}
			if(map.get("code_div")!=null) {
				code.setCode_div(map.get("code_div").toString());
			}
			code.setUse_yn("Y");
			code.setCode_step(1);
			List<Map<String, Object>> list = scddao.getCode(code);
			return list;
		}
		else {
			return null;
		}
	}
	
	// json 형식 데이터를 map 형식으로 가공 후 리턴
	public Map<String, Object> getMap(String strData) {
		
		Map<String, Object> map = null;
		mapper = new ObjectMapper();
		try {
			map = mapper.readValue(strData, new TypeReference<Map<String, Object>>(){});
		} catch (JsonParseException e) {
			e.printStackTrace();
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return map;
	}
	
	// 가져온 데이터를 상황에 맞도록 제 해석 하여 리턴
	public String getData(List<Map<String, Object>> list) {
		String returnValue = "";
		int iControlCount=0;
		switch (control_type) {
		case "select":
			returnValue += "<select id='"+control_id+"' >";
            if (first_item_type.equals("select"))
            {
                returnValue += "<option value=''>선택</option>";
            }
            else if (first_item_type.equals("ALL"))
            {
                returnValue += "<option value=''>전체</option>";
            }
            //실제 데이터 바인딩
            if(bean_type.equals("code"))
            {
            	for(Object obj : list) {
					ScdCodeBean scd = (ScdCodeBean) obj;
					returnValue += "<option value='"+scd.getCode()+"'>"+scd.getCode_name()+"</option>";
				}
            }
            returnValue += "</select>";
			break;
		case "radio":
            //실제 데이터 바인딩
            if(bean_type.equals("code"))
            {
            	for(Object obj : list) {
					ScdCodeBean scd = (ScdCodeBean) obj;
					returnValue += "<input type='radio' id='"+control_id+iControlCount+"' name='"+control_id+"' value='"+scd.getCode()+"' class='margin-right-0' />"
							+ "<label for='"+control_id+"' class='margin-right-5'>"+scd.getCode_name()+"</label>";
                        iControlCount++;
				}
            }
			break;
		 case "check":
			//실제 데이터 바인딩
            if(bean_type.equals("code"))
            {
            	for(Object obj : list) {
					ScdCodeBean scd = (ScdCodeBean) obj;
					returnValue += "<input type='checkbox' id='"+control_id+iControlCount+"' name='"+control_id+"' value='"+scd.getCode()+"' />&nbsp;<label for='"+control_id+"'>"+scd.getCode_name()+"</label>&nbsp;&nbsp;";
                        iControlCount++;
				}
            }
            break;
		default:
			break;
		}
		
		return returnValue;
	}
}
