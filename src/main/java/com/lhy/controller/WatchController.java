package com.lhy.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lhy.entity.User;
import com.lhy.entity.Watch;
import com.lhy.mapper.WatchMapper;

@Controller
public class WatchController {
	
	@Autowired
	private WatchMapper watchMapper;
	
	@RequestMapping("tologin")
	public String tologin(){
		return "login";
	}
	
	@RequestMapping("login")
	public String login(String uname,String password,HttpSession session){
		User user = watchMapper.login(uname, password);
		if(user!=null){
			session.setAttribute("user", user);
			return "redirect:list";
		}else{
			return "login";
		}
	}
	
	@RequestMapping("list")
	public String list(String lname,Model model){
		List<Watch> wlist = watchMapper.wlist(lname);
		model.addAttribute("wlist",wlist);
		return "list";
	}
	
	@RequestMapping("toadd")
	public String toadd(){
		return "add";
	}
	
	@RequestMapping("add")
	public String add(Model model,Watch watch){
		watchMapper.add(watch);
		return "redirect:list";
	}
	
	@RequestMapping("del")
	public String del(Integer sid){
		watchMapper.del(sid);
		return "redirect:list";
	}
	
	@RequestMapping("toupdate")
	public String toupdate(Model model,Integer sid){
		Watch watch = watchMapper.getById(sid);
		model.addAttribute("watch",watch);
		return "update";
	}
	
	@RequestMapping("update")
	public String update(Watch watch){
		watchMapper.update(watch);
		return "redirect:list";
	}
	
	@RequestMapping("deleteAll")
	@ResponseBody
	public boolean deleteAll(String ids){
			watchMapper.deleteAll(ids);
				return true;
	}
}
