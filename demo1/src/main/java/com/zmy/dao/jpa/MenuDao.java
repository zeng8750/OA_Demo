package com.zmy.dao.jpa;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.zmy.pojos.Menu;

/**
 * 菜单Dao层接口
 * 通过MenuDao继承JpaRepository的增删查改的基本方法，后面还会继续增加其他的操作数据库的方法
 * 规范持久层对数据库的操作
 * @author Administrator
 *
 */
public interface MenuDao extends JpaRepository<Menu, Integer>{
	
	@Query("select m from Menu m,Menu f where m.menuFather=f.id and f.id=?1")
	public List<Menu> findMenus(int id);
	
}
