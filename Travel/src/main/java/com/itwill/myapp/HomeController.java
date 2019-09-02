package com.itwill.myapp;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.ServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.util.JSONPObject;
import com.itwill.domain.ScdCodeBean;
import com.itwill.service.UtilService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	
	@Inject
	private UtilService util;
	
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	@RequestMapping(value = "basicTest", method = RequestMethod.GET)
	public String basicTest(Locale locale, Model model) {
		return "basicTest";
	}
	
	
	@RequestMapping(value = "ajaxCodeProc", method = RequestMethod.POST)
	@ResponseBody
	public String ajaxCodeProc(ScdCodeBean code, @RequestBody String paramData) {
		
		//System.out.println("pParams : " +request.getAttribute("CODE"));
		
		//String json = parameters.get("list").toString();
		
		//System.out.println(params.get("CONTROL_TYPE"));

		//ObjectMapper mapper = new ObjectMapper();
		//List<Map<String, Object>> list = mapper.readValue(json, new TypeReference<ArrayList<Map<String, Object>>>(){});
		
		
//		System.out.println("paramData : " +  paramData);
//		
//		
//		
//		System.out.println("ajaxCodeProc");
		String returnValue ="";
//		code.setCode("KOR");
//		code.setCode_div("CO");
//		code.setUse_yn("Y");
//		code.setCode_step(1);
		
		//System.out.println("HomeController ajaxCodeProc");
		
		try {
			returnValue = util.getCode(paramData);
		} catch (JsonProcessingException e) {
			System.out.println(e.getMessage());
		}
		
//		String returnValue="";
//		returnValue += "<select id='ddl' >";
//        returnValue += "<option value='KOR'>대한민국</option>";
//        returnValue += "</select>";
//        
//        
//        //date da = new 
//        
//       // jsonData data = new jsonData();
//        
//        //data.setName("DATA");
//        //data.setData(returnValue);
//        
//        ObjectMapper mapper = new ObjectMapper();
        //JSONPObject json = new JSONPObject("JSON.parse", returnValue);

       //String jsonStr = mapper.writeValueAsString(data);



        //System.out.println(jsonStr);
        
        
		return returnValue;
	}
	
	@RequestMapping(value = "ajaxProc", method = RequestMethod.POST)
	@ResponseBody
	public String ajaxProc(Locale locale, Model model, ScdCodeBean code){
		System.out.println("ajaxProc");
		String returnValue =""; 
		//returnValue = util.getCode(code);
		
//		String returnValue="";
//		returnValue += "<select id='ddl' >";
//        returnValue += "<option value='KOR'>대한민국</option>";
//        returnValue += "</select>";
//        
//        
//        //date da = new 
//        
//       // jsonData data = new jsonData();
//        
//        //data.setName("DATA");
//        //data.setData(returnValue);
//        
//        ObjectMapper mapper = new ObjectMapper();
        //JSONPObject json = new JSONPObject("JSON.parse", returnValue);

       //String jsonStr = mapper.writeValueAsString(data);



        //System.out.println(jsonStr);
        
        
		return returnValue;
	}
}




