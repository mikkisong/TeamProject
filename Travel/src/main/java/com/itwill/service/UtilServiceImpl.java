package com.itwill.service;

import java.io.IOException;
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
import com.itwill.dao.UtilDAO;
import com.itwill.domain.JsonDataBean;
import com.itwill.domain.ScdCodeBean;


@Service
public class UtilServiceImpl implements UtilService {
	
	@Inject
	private UtilDAO dao;
	
//	@Inject
	private ObjectMapper mapper = new ObjectMapper();
	
	private String control_type;  // 컨트롤 타입
	private String first_item_type;// 셀렉트 박스 일때 전체 혹은 선택 표시 뜨도록
	private String control_id; // 만들어지는 아이디값
	
	
	public String getData(List<Map<String, Object>> list) {
		//List<Map<String, Object>> resultMap = new ArrayList<Map<String, Object>>();
		
		System.out.println("getData List<Map<String, Object>" );
//		
//		Iterator<Entry<String,Object>> iterator = null;
//	    Entry<String,Object> entry = null;
//	    //log.debug("--------------------printList--------------------\n");
//	    int listSize = list.size();
//	    for(int i=0; i<listSize; i++){
//	    	System.out.println("list index : "+i);
//	        iterator = list.get(i).entrySet().iterator();
//	        System.out.println("여기?");
//	        while(iterator.hasNext()){
//	        	System.out.println("여기?2");
//	            entry = iterator.next();
//	            //log.debug("key : "+entry.getKey()+",\tvalue : "+entry.getValue());
//	            System.out.println("key: " + entry.getKey() + " | value: " + entry.getValue());
//	        }
//	        //log.debug("\n");
//	    }
		
//		List<Map<String, Object>> list2 = list;
//		for (Map<String, Object> map : list2) {
//			System.out.println("aadfsasfas");
//		    for (Map.Entry<String, Object> entry : map.entrySet()) {
//		        System.out.println(entry.getKey() + " - " + entry.getValue());
//		    }
//		}

		
//		
//		for(Map<String, Object> map : list){
//			System.out.println("?aaaaaa");
//			for(Map.Entry<String, Object> entry:map.entrySet()){
//			        String key = entry.getKey();
//			        Object value = entry.getValue();
//			    	System.out.println("key: " + key + " | value: " + value);
//			}
//		}


		String returnValue = "";
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
            
            
//            DataTable dataTable = pDataSet.Tables[0];
//            foreach (DataRow row in pDataSet.Tables[0].Rows)
//            {
//                if (string.IsNullOrEmpty(strValueColumnName) == false && string.IsNullOrEmpty(strTextColumnName) == false)
//                {
//                    returnValue += string.Format("<option value='{0}'>{1}</option>", row[strValueColumnName].ToString().Trim(), row[strTextColumnName].ToString().Trim());
//                }                    
//            }
            returnValue += "</select>";
			
			break;

		default:
			break;
		}
		
		return returnValue;
	}
	
	public Map<String, Object> getMap(String strData) {
		
		Map<String, Object> map = null;
		mapper = new ObjectMapper();
		try {
			map = mapper.readValue(strData, new TypeReference<Map<String, Object>>(){});
		} catch (JsonParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return map;
	}
	
	public Object setData(String paramData) {
		//System.out.println("Object setData paramData : " + paramData);
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

		if(map.get("type").equals("code")) {
			ScdCodeBean code = new ScdCodeBean();
			if(map.get("code")!=null) {
				code.setCode(map.get("code").toString());
			}
			if(map.get("code_div")!=null) {
				code.setCode_div(map.get("code_div").toString());
			}
			code.setUse_yn("Y");
			code.setCode_step(1);
			return (Object)code;
		}
		else {
			return null;
		}
	}

	@Override
	public String getCode(String paramData) throws JsonProcessingException{
		System.out.println("UtilServiceImpl getCode!!!");
		JsonDataBean json = new JsonDataBean();
		
		Object obj =  null;
		obj = setData(paramData);
		
		
		List<Map<String, Object>> list = dao.getCode(obj);
		
		
		
		String jsonStr="";
		jsonStr = getData(list);
		
		System.out.println("jsonStr 가공전 : " + jsonStr);
		
		json.setData(jsonStr);
		
		
		
		jsonStr = mapper.writeValueAsString(json);
		
		//jsonStr = mapper.writeValueAsString(list);
		

		
			
		
		System.out.println("jsonStr 가공후 : " + jsonStr);
		//String jsonStr = "";
		return jsonStr;
	}

}
