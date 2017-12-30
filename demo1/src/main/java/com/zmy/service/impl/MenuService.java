package com.zmy.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zmy.dao.jpa.MenuDao;
import com.zmy.pojos.Menu;
import com.zmy.service.MenuImpl;
import com.zmy.vos.MenuVo;

@Service
public class MenuService implements MenuImpl {

	@Autowired
	MenuDao dao;
	
	@Override
	public void addMenu(Menu m) {
		if(m.getMenuName()!=null){//判断菜单名称是否为空
			dao.save(m);
		}
	}

	@Override
	public void deleteMenu(Integer id) throws Exception {
		if(id!=null){//判断是否为空
			if(findMenu(id)!=null){//判断数据库是否存在
				dao.delete(id);
			}else{
				throw new Exception("不存在的菜单，删除失败！");
			}
		}
	}

	@Override
	public List<Menu> findMenus() {
		List<Menu> list = dao.findAll();
		return list;
	}
	
	
	public List<Map<String, Object>> findAll(){
		List<Menu> list = dao.findAll();
		return createTree(list, 0);
	}


	@Override
	public Menu findMenu(Integer id) {
		Menu m = dao.findOne(id);
		return m;
	}

	@Override
	public void updateMenu(Menu m) {
		// TODO Auto-generated method stub

	}
	
	
	public void findMenus(int id){
		List<Menu> list = dao.findAll();
		
		
		
		for (Menu menu : list) {
			System.out.println(menu.getMenuName());
			findMenus(menu.getId());
		}
	}
	
	/**
	 * 生成菜单树形结构
	 * @param list
	 * @param fid
	 * @return
	 */
	public List<Map<String,Object>> createTree(List<Menu> list,int fid){
		List<Map<String,Object>> treeData=new ArrayList<>();
		for (Menu meun : list) {
			if(meun.getMenuFather()==fid){
				Map<String,Object> map =new HashMap<>();
				map.put("children", createTree(list,meun.getId()));
				map.put("name",meun.getMenuName());
				map.put("id",meun.getId());
				treeData.add(map);
			}
			
		}
		return treeData;
	}
}
