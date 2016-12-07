package com.sanss.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping ( "/MyController" ) 
public class MyController {
	@RequestMapping("/test")
	@ResponseBody
	public Object test(){
		Map map = new HashMap<String, String>();
		map.put("name", "zs");
		map.put("age", "12");
		System.out.println("1111111111111111");
		return map;
	}
	
	@RequestMapping("/test2")
	public String test2(){
		System.out.println("111");
		return "111";
	} 


}
