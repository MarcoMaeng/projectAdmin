package com.mountainBooks.admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class adminController {
	
	@RequestMapping(value="adminBookSearch.do", method=RequestMethod.GET)
	public ModelAndView adminBookSearch(HttpServletRequest request, HttpServletResponse response) {		
		return new ModelAndView("admin/adminBookSearch.admin");
	}
	
	@RequestMapping(value="adminBookInsert.do", method=RequestMethod.GET)
	public ModelAndView adminBookInsert(HttpServletRequest request, HttpServletResponse response) {		
		return new ModelAndView("admin/adminBookInsert.admin");
	}
	
	@RequestMapping(value="adminWriterSearch.do", method=RequestMethod.GET)
	public ModelAndView adminWriterSearch(HttpServletRequest request, HttpServletResponse response) {		
		return new ModelAndView("admin/adminWriterSearch.admin");
	}
	
	@RequestMapping(value="adminMemberManage.do", method=RequestMethod.GET)
	public ModelAndView adminMemberManage(HttpServletRequest request, HttpServletResponse response) {		
		return new ModelAndView("admin/adminMemberManage.admin");
	}
	
	@RequestMapping(value="adminMap.do", method=RequestMethod.GET)
	public ModelAndView adminMap(HttpServletRequest request, HttpServletResponse response) {		
		return new ModelAndView("admin/adminMap.admin");
	}
	
	@RequestMapping(value="adminChange.do", method=RequestMethod.GET)
	public ModelAndView adminChange(HttpServletRequest request, HttpServletResponse response) {		
		return new ModelAndView("admin/adminChange.admin");
	}
	
	@RequestMapping(value="adminDelivery.do", method=RequestMethod.GET)
	public ModelAndView adminDelivery(HttpServletRequest request, HttpServletResponse response) {		
		return new ModelAndView("admin/adminDelivery.admin");
	}
	
	@RequestMapping(value="adminOrderSearch.do", method=RequestMethod.GET)
	public ModelAndView adminOrderSearch(HttpServletRequest request, HttpServletResponse response) {		
		return new ModelAndView("admin/adminOrderSearch.admin");
	}
	
	@RequestMapping(value="adminSales.do", method=RequestMethod.GET)
	public ModelAndView adminSales(HttpServletRequest request, HttpServletResponse response) {		
		return new ModelAndView("admin/adminSales.admin");
	}
	
	@RequestMapping(value="adminCstMain.do", method=RequestMethod.GET)
	public ModelAndView adminCstMain(HttpServletRequest request, HttpServletResponse response) {		
		return new ModelAndView("admin/adminCstMain.admin");
	}
	
	@RequestMapping(value="adminFaqInsert.do", method=RequestMethod.GET)
	public ModelAndView adminFaqInsert(HttpServletRequest request, HttpServletResponse response) {		
		return new ModelAndView("admin/adminFaqInsert.admin");
	}
	
	@RequestMapping(value="adminFaqMain.do", method=RequestMethod.GET)
	public ModelAndView adminFaqMain(HttpServletRequest request, HttpServletResponse response) {		
		return new ModelAndView("admin/adminFaqMain.admin");
	}
	
	@RequestMapping(value="adminFaqUpdate.do", method=RequestMethod.GET)
	public ModelAndView adminFaqUpdate(HttpServletRequest request, HttpServletResponse response) {		
		return new ModelAndView("admin/adminFaqUpdate.admin");
	}
	
	@RequestMapping(value="adminNctInsert.do", method=RequestMethod.GET)
	public ModelAndView adminNctInsert(HttpServletRequest request, HttpServletResponse response) {		
		return new ModelAndView("admin/adminNctInsert.admin");
	}
	
	@RequestMapping(value="adminNctMain.do", method=RequestMethod.GET)
	public ModelAndView adminNctMain(HttpServletRequest request, HttpServletResponse response) {		
		return new ModelAndView("admin/adminNctMain.admin");
	}
	
	@RequestMapping(value="adminNctUpdate.do", method=RequestMethod.GET)
	public ModelAndView adminNctUpdate(HttpServletRequest request, HttpServletResponse response) {		
		return new ModelAndView("admin/adminNctUpdate.admin");
	}
}
