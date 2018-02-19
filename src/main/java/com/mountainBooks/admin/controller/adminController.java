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
		return new ModelAndView("adminView/adminBookSearch.admin");
	}
	
	@RequestMapping(value="adminBookInsert.do", method=RequestMethod.GET)
	public ModelAndView adminBookInsert(HttpServletRequest request, HttpServletResponse response) {		
		return new ModelAndView("adminView/adminBookInsert.admin");
	}
	
	@RequestMapping(value="adminBookInfo.do", method=RequestMethod.GET)
	public ModelAndView adminBookInfo(HttpServletRequest request, HttpServletResponse response) {		
		return new ModelAndView("admin/adminBookInfo.admin");
	}
	
	@RequestMapping(value="adminWriterSearch.do", method=RequestMethod.GET)
	public ModelAndView adminWriterSearch(HttpServletRequest request, HttpServletResponse response) {		
		return new ModelAndView("adminView/adminWriterSearch.admin");
	}
	@RequestMapping(value="adminWriterInsert.do", method=RequestMethod.GET)
	public ModelAndView adminWriterInsert(HttpServletRequest request, HttpServletResponse response) {		
		return new ModelAndView("admin/adminWriterInsert.admin");
	}
	
	@RequestMapping(value="adminMemberManage.do", method=RequestMethod.GET)
	public ModelAndView adminMemberManage(HttpServletRequest request, HttpServletResponse response) {		
		return new ModelAndView("adminView/adminMemberManage.admin");
	}
	
	@RequestMapping(value="adminMap.do", method=RequestMethod.GET)
	public ModelAndView adminMap(HttpServletRequest request, HttpServletResponse response) {		
		return new ModelAndView("adminView/adminMap.admin");
	}
	
	@RequestMapping(value="adminChange.do", method=RequestMethod.GET)
	public ModelAndView adminChange(HttpServletRequest request, HttpServletResponse response) {		
		return new ModelAndView("adminView/adminChange.admin");
	}
	
	@RequestMapping(value="adminDelivery.do", method=RequestMethod.GET)
	public ModelAndView adminDelivery(HttpServletRequest request, HttpServletResponse response) {		
		return new ModelAndView("adminView/adminDelivery.admin");
	}
	
	@RequestMapping(value="adminOrderSearch.do", method=RequestMethod.GET)
	public ModelAndView adminOrderSearch(HttpServletRequest request, HttpServletResponse response) {		
		return new ModelAndView("adminView/adminOrderSearch.admin");
	}
	
	@RequestMapping(value="adminSales.do", method=RequestMethod.GET)
	public ModelAndView adminSales(HttpServletRequest request, HttpServletResponse response) {		
		return new ModelAndView("adminView/adminSales.admin");
	}
	
	@RequestMapping(value="adminCstMain.do", method=RequestMethod.GET)
	public ModelAndView adminCstMain(HttpServletRequest request, HttpServletResponse response) {		
		return new ModelAndView("adminView/adminCstMain.admin");
	}
	
	@RequestMapping(value="adminFaqInsert.do", method=RequestMethod.GET)
	public ModelAndView adminFaqInsert(HttpServletRequest request, HttpServletResponse response) {		
		return new ModelAndView("adminView/adminFaqInsert.admin");
	}
	
	@RequestMapping(value="adminFaqMain.do", method=RequestMethod.GET)
	public ModelAndView adminFaqMain(HttpServletRequest request, HttpServletResponse response) {		
		return new ModelAndView("adminView/adminFaqMain.admin");
	}
	
	@RequestMapping(value="adminFaqUpdate.do", method=RequestMethod.GET)
	public ModelAndView adminFaqUpdate(HttpServletRequest request, HttpServletResponse response) {		
		return new ModelAndView("adminView/adminFaqUpdate.admin");
	}
	
	@RequestMapping(value="adminNctInsert.do", method=RequestMethod.GET)
	public ModelAndView adminNctInsert(HttpServletRequest request, HttpServletResponse response) {		
		return new ModelAndView("adminView/adminNctInsert.admin");
	}
	
	@RequestMapping(value="adminNctMain.do", method=RequestMethod.GET)
	public ModelAndView adminNctMain(HttpServletRequest request, HttpServletResponse response) {		
		return new ModelAndView("adminView/adminNctMain.admin");
	}
	
	@RequestMapping(value="adminNctUpdate.do", method=RequestMethod.GET)
	public ModelAndView adminNctUpdate(HttpServletRequest request, HttpServletResponse response) {		
		return new ModelAndView("adminView/adminNctUpdate.admin");
	}
}
