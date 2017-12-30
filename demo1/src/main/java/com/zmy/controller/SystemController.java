package com.zmy.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zmy.pojos.Menu;
import com.zmy.service.impl.MenuService;

@Controller
public class SystemController {

	@Autowired
	MenuService ms;
	
	@RequestMapping("/addMenu")
	public String addMenu(Menu m){		
		ms.addMenu(m);
		return "menuBtn";
	}
	
	@RequestMapping("/getTree")
	public @ResponseBody List<Map<String,Object>> getTree(){
		return ms.findAll();
	}
}
