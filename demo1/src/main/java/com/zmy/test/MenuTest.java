package com.zmy.test;




import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.alibaba.fastjson.JSON;
import com.zmy.pojos.Menu;
import com.zmy.service.impl.MenuService;

public class MenuTest {
	
	MenuService ms;
	
	@Before
	public void LoadContext(){
		@SuppressWarnings("resource")
		ApplicationContext context=new ClassPathXmlApplicationContext("Spring-context.xml");
		ms=(MenuService) context.getBean("ms");
	}
	
	
	@Test
	public void addMenu() throws Exception {
		Menu m = new Menu();
		m.setMenuName("系统");
		ms.addMenu(m);
	}
	
	@Test
	public void getMenus() throws Exception {
		String string = JSON.toJSONString(ms.findAll());
		System.out.println(string);
	}

	

	@Test
	public void deleteMenu(){
		try {
			ms.deleteMenu(3);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

}
