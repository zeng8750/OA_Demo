package com.zmy.vos;

import java.util.List;

import com.zmy.pojos.Menu;

public class MenuVo {
	
	
	private Menu m;
	
	private List<Menu> ms;
	
	private MenuVo mv;

	public List<Menu> getMs() {
		return ms;
	}

	public void setMs(List<Menu> ms) {
		this.ms = ms;
	}

	public MenuVo getMv() {
		return mv;
	}

	public void setMv(MenuVo mv) {
		this.mv = mv;
	}
	
	
	
	public Menu getM() {
		return m;
	}

	public void setM(Menu m) {
		this.m = m;
	}

	@Override
	public String toString() {
		return "MenuVo [m=" + m + ", ms=" + ms + ", mv=" + mv + "]";
	}

	
	
}
