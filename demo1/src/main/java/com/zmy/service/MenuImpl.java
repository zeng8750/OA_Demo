package com.zmy.service;

import java.util.List;

import com.zmy.pojos.Menu;


/**
 * 菜单的业务接口，规范业务层的编码,增加业务的基本的业务方法
 * 1.添加菜单
 * 2.删除菜单
 * 3.查询所有菜单项
 * 4.修改菜单
 * 5.查询一个菜单项
 * @author Administrator
 *
 */
public interface MenuImpl {
	/**
	 * 增加一个菜单
	 * @param m
	 */
	public void addMenu(Menu m) throws Exception;
	
	/**
	 * 删除一个菜单
	 * @param m
	 * @throws Exception 
	 */
	public void deleteMenu(Integer id) throws Exception;
	
	/**
	 * 获取菜单所有项
	 * @return
	 */
	public List<Menu> findMenus();
	
	/**
	 * 获取单个菜单
	 * @param id
	 * @return
	 */
	public Menu findMenu(Integer id) throws Exception;
	
	/**
	 * 修改单个菜单项
	 * @param m
	 */
	public void updateMenu(Menu m) throws Exception;
}
