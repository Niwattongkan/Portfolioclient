package com.porlity.Controller;

import java.util.List;

import javax.ejb.EJB;
import javax.servlet.http.HttpServletRequest;

import org.hibernate.validator.constraints.Range;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.porlity.Service.PortfolioService;
import com.porlity.entity.portfolio;

@Controller
public class PortfolioController {
	@EJB(mappedName = "ejb:/PorlityClient//PortfolioServiceBean!com.porlity.Service.PortfolioService")
	PortfolioService port;
	@RequestMapping("/Portfolio")
	public ModelAndView listPort(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("Portfolio.jsp");
		List<portfolio> portfolioList;
		try {
			portfolioList = port.getAllPortfolio();
			mv.addObject("portfolioList",portfolioList);
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return mv;
	}
	@RequestMapping("/newPort")
	public ModelAndView newPort() {
		ModelAndView mv = new ModelAndView("Portfolioform.jsp");
		portfolio portfoi = new portfolio();
		mv.addObject("portfolio",portfoi);
		return mv;
	}
	
	@RequestMapping("/savaPort")
	public String savePort(@ModelAttribute("portfolio") portfolio portfolio, BindingResult result,
			HttpServletRequest request) {
		try{
			if(portfolio.getPortfolioID() == 0){
				port.insert(portfolio);
			}else{
				port.update(portfolio);
			}
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return "redirect:Portfolio.do";
	}
	@RequestMapping("/editPort")
	public ModelAndView editPortfolio(HttpServletRequest request) {
		int paramId = Integer.parseInt(request.getParameter("id"));
		portfolio portfo;
		ModelAndView mv = new ModelAndView("Portfolioform.jsp");
		try{
			portfo = port.findPortfolio(paramId);
			mv.addObject("portfolio",portfo);
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return mv;
	}
	@RequestMapping("/deletePort")
	public String deletePort(HttpServletRequest request){
		port.delete(Long.valueOf(request.getParameter("id")));
		return "redirect:Portfolio.do";
	}
	
}
