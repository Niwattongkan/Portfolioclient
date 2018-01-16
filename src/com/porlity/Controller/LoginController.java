package com.porlity.Controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.porlity.Service.UserService;
import com.porlity.entity.user;

@Controller
public class LoginController {
	@RequestMapping("/login")  
	   public ModelAndView login(HttpServletRequest request,
			   HttpServletResponse response) {
		  String userName=request.getParameter("userName");  
	      String password=request.getParameter("password");
	      String message;
	      if(userName != null && 
	    		  !userName.equals("ouk0057@gmail.com ") 
	    		  && userName.equals("ouk0057@gmail.com") && 
	    		  password != null && 
	    		  !password.equals("12345 ") && 
	    		  password.equals("12345")){
	    	  message = "Welcome " +userName + ".";
		      return new ModelAndView("welcome", 
		    		  "message", message); 
	      }else{
	    	  message = "Wrong username or password.";
	    	  return new ModelAndView("errorPage", 
	    			  "message", message);
	      }
	   }
	}