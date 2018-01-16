package com.porlity.Controller;

import java.util.List;

import javax.ejb.EJB;
import javax.servlet.http.HttpServletRequest;

import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.porlity.Service.UserService;
import com.porlity.entity.user;

public class ResgisterController {
	@EJB(mappedName = "ejb:/PorlityClient//UserServiecBean!com.porlity.Service.UserService")
	UserService userServ;
//	//yet use
	@RequestMapping("/listResgister.do")
	public ModelAndView listUser(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("login.jsp");
		List<user> userList;
		try {
			userList = userServ.getAllUser();
			mv.addObject("userList",userList);
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return mv;		
	}
	@RequestMapping("/Resgister")
	public ModelAndView newUser() {
		ModelAndView mv = new ModelAndView("login.jsp");
		user us = new user();
		mv.addObject("us",us);
		return mv;
	}
	@RequestMapping("/saveRester")
	public String saveEmp(@ModelAttribute("us") user user,BindingResult result,
			HttpServletRequest request) {
		try {
			if(user.getUserID() == 0){
				userServ.insert(user);
			}else{
				userServ.update(user);
			}
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return "redirect:lastResgister.do";
	}

}
