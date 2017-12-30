package com.zmy.pojos;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;


/**
 * The persistent class for the menu database table.
 * 
 */
@Entity
@NamedQuery(name="Menu.findAll", query="SELECT m FROM Menu m")
public class Menu implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;


	private int menuFather;

	private String menuImg;

	private int menuIsvisable;

	private String menuName;

	private String menuUrl;
	
	

	
	
	public Menu() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getMenuFather() {
		return this.menuFather;
	}

	public void setMenuFather(int menuFather) {
		this.menuFather = menuFather;
	}

	public String getMenuImg() {
		return this.menuImg;
	}

	public void setMenuImg(String menuImg) {
		this.menuImg = menuImg;
	}

	public int getMenuIsvisable() {
		return this.menuIsvisable;
	}

	public void setMenuIsvisable(int menuIsvisable) {
		this.menuIsvisable = menuIsvisable;
	}

	public String getMenuName() {
		return this.menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public String getMenuUrl() {
		return this.menuUrl;
	}

	public void setMenuUrl(String menuUrl) {
		this.menuUrl = menuUrl;
	}

	@Override
	public String toString() {
		return "Menu [id=" + id + ", menuFather=" + menuFather + ", menuImg=" + menuImg + ", menuIsvisable="
				+ menuIsvisable + ", menuName=" + menuName + ", menuUrl=" + menuUrl + "]";
	}


	
}