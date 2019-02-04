package com.athensoft.school.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.athensoft.school.entity.SchoolClass;
import com.athensoft.school.entity.SchoolClassAction;
import com.athensoft.school.service.SchoolClassService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/school/class")
@Log4j
public class SchoolClassController {
	
	/**
	 * News Service instance
	 */
	@Autowired
	private SchoolClassService schoolClassService;
	
	@RequestMapping(value = "/list.html")
	public String gotoListNews() {
		String viewName = "school/school_class_list";
		return viewName;
	}
	
	@RequestMapping(value = "/list", produces = "application/json")
	@ResponseBody
	public Map<String, Object> getDataListSchool() {
		log.info("entering... /school/class/list");

		// data
		List<SchoolClass> listClasses = schoolClassService.getAllClasses();
		log.info("Length of class entries: " + listClasses == null ? "NULL" : listClasses.size());

//		String[][] data = getData(listNews, ACTION_EDIT);
		String[][] data = schoolClassService.getData(listClasses, SchoolClassAction.EDIT);

		ModelAndView mav = new ModelAndView();
		Map<String, Object> model = mav.getModel();
		model.put("draw", new Integer(1));
		model.put("recordsTotal", new Integer(5));
		model.put("recordsFiltered", new Integer(5));
		model.put("data", data);
		model.put("customActionStatus", "OK");
		model.put("customActionMessage", "Data loaded");

		log.info("leaving... /school/class/list");
		return model;
	}

}
