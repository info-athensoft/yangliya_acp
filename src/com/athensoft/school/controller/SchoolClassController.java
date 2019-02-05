package com.athensoft.school.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.athensoft.base.entity.Module;
import com.athensoft.content.event.entity.EventMedia;
import com.athensoft.content.event.entity.News;
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
	
	@RequestMapping(value = "/edit.html")
	public ModelAndView gotoEditSchoolClass(@RequestParam String classCode) {
		log.info("entering... /school/class/edit.html");

		// data - news
		SchoolClass schoolClass = schoolClassService.getSchoolClassByClassCode(classCode);

		// data - media
		//List<EventMedia> listEventMedia = schoolClassService.getEventMediaByEventUUID(eventUUID);
		//log.info("Length of EventReview entries: " + listEventMedia == null ? "NULL" : listEventMedia.size());
		
		// data - tag
		//String tagNames = tagMapService.getTagNames(Module.NEWS, news.getGlobalId());
		
		//System.out.println("news.getGlobalId()="+news.getGlobalId());
		//System.out.println("tagNames="+tagNames);
		
		
		ModelAndView mav = new ModelAndView();
		Map<String, Object> model = mav.getModel();
		model.put("schoolClassObject", schoolClass);
		//model.put("eventMediaList", listEventMedia);
		//model.put("newsTagNames", tagNames);

		String viewName = "school/school_class_edit";
		mav.setViewName(viewName);

		log.info("leaving... /school/class/edit.html");
		return mav;
	}

}
