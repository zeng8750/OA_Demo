package com.zmy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.zmy.pojos.Menu;
import com.zmy.service.impl.MenuService;

@Controller
public class Demo {

	@Autowired
	MenuService ms;
	
	
	@RequestMapping("/toIndex")
	public ModelAndView toJsp(){
		ModelAndView model=new ModelAndView();
		
		
		model.addObject("text", "你好！MVC");
		model.setViewName("index");
		return model;
	}
	
	@RequestMapping("/toMenuBtn")
	public String toMenu(){
		return "menuBtn";
	}
	
	@RequestMapping("/todata")
	public String toData(){
		
		return "treeData";
	}
	
	@RequestMapping("/test1")
	public void test1(){
		List<Menu> findMenus = ms.findMenus();
		System.out.println(findMenus);
	}
	
}
