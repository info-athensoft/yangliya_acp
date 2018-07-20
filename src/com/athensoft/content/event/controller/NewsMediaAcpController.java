package com.athensoft.content.event.controller;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.athensoft.content.event.entity.EventMedia;
import com.athensoft.content.event.service.EventMediaService;

/**
 * The controller of news media
 * @author Athens
 * @version 1.0
 */
@Controller
public class NewsMediaAcpController {
	private static final Logger logger = Logger.getLogger(NewsMediaAcpController.class);
	
	/**
	 * EventMedia Service instance
	 */
	@Autowired
	private EventMediaService eventMediaService;
	
	
	/**
	 * set current media to as a cover media and refresh all media objects 
	 * @param mediaId the mediaId of current media
	 * @param eventUUID the eventUUID of current event
	 * @return data table of updated media object
	 */
	@RequestMapping(value="/events/setCoverMedia",produces="application/json")
	@ResponseBody
	public Map<String,Object> setCoverMedia(
			@RequestParam long mediaId, 
			@RequestParam String eventUUID){
		logger.info("entering /events/setCoverMedia");
		
		
		
		//data - set cover primary state		
		EventMedia previousPrimaryMedia = eventMediaService.getPrimaryMediaByEventUUID(eventUUID);
		if (previousPrimaryMedia!=null){
			previousPrimaryMedia.setPrimaryMedia(false);
			eventMediaService.updateEventMedia(previousPrimaryMedia);
		}
		
		logger.info("mediaId="+mediaId+",eventUUID="+eventUUID);
		
		EventMedia media = eventMediaService.getEventMediaByMediaId(mediaId);
		media.setPrimaryMedia(true);
		eventMediaService.updateEventMedia(media);
		
		
		//data - media
		List<EventMedia> listEventMedia = eventMediaService.getEventMediaByEventUUID(eventUUID);
		logger.info("Length of EventReview entries: "+ listEventMedia.size());
		
		ModelAndView mav = new ModelAndView();
		Map<String, Object> model = mav.getModel();
		model.put("eventMediaList", listEventMedia);
		
//		String viewName = "events/event_news_edit";
//		mav.setViewName(viewName);
		
		logger.info("leaving /events/setCoverMedia");
		return model;
	}
	
	
	
	/**
	 * @param mediaId
	 * @param eventUUID
	 * @return
	 */
	@RequestMapping(value="/events/reloadEventMedia",produces="application/json")
	@ResponseBody
	public Map<String,Object> reloadEventMedia(
			@RequestParam String eventUUID){
		logger.info("entering /events/reloadEventMedia");
		
		//data - media
		List<EventMedia> listEventMedia = eventMediaService.getEventMediaByEventUUID(eventUUID);
		logger.info("Length of EventReview entries: "+ listEventMedia.size());
		
		
		ModelAndView mav = new ModelAndView();
		Map<String, Object> model = mav.getModel();
		model.put("eventMediaList", listEventMedia);
//		String viewName = "events/event_news_edit";
//		mav.setViewName(viewName);
				
		logger.info("leaving /events/reloadEventMedia");
		return model;
	}
	
	@RequestMapping(value="/events/changeMediaName",method=RequestMethod.POST)
	public ModelAndView changeMediaName(@RequestParam String jsonObjString) {
		
		logger.info("entering /events/changeMediaName");
		
		/* initial settings */
		ModelAndView mav = new ModelAndView();
		
		//set model
//      Map<String, Object> model = mav.getModel();
        JSONObject ic_job= new JSONObject(jsonObjString);
   
//      News news = new News();
//      news.setGlobalId(ic_job.getLong("globalId"));
        String mediaId = Integer.toString(ic_job.getInt("mediaId"));
        String eventUUID = ic_job.getString("eventUUID");
        String mediaName = ic_job.getString("mediaName");
                 
//      logger.info("news = "+news);
          
		/* business logic*/
        //long itemId = itemService.createItem(ic); 

        eventMediaService.changeMediaName(mediaId, eventUUID, mediaName);
		
		/* assemble model and view */
//      model.put("news", news);
        String viewName = "events/changeSortNumber";
		mav.setViewName(viewName);		
		
		logger.info("leaving /events/changeMediaName");
		return mav;		
	}
	
	@RequestMapping(value="/events/changeMediaLabel",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> changeMediaLabel(@RequestParam String jsonObjString) {
		logger.info("entering /events/changeMediaLabel");
		
		
		//set model
//      Map<String, Object> model = mav.getModel();
        JSONObject ic_job= new JSONObject(jsonObjString);
   
//      News news = new News();
//      news.setGlobalId(ic_job.getLong("globalId"));
        String mediaId = Integer.toString(ic_job.getInt("mediaId"));
        String eventUUID = ic_job.getString("eventUUID");
        String mediaLabel = ic_job.getString("mediaLabel");
                 
//      logger.info("news = "+news);
          
		/* business logic*/
        //long itemId = itemService.createItem(ic); 

        eventMediaService.changeMediaLabel(mediaId, eventUUID, mediaLabel);
		
        /* initial settings */
		ModelAndView mav = new ModelAndView();
        
		/* assemble model and view */
        //String viewName = "events/changeSortNumber";
		//mav.setViewName(viewName);		
		
		Map<String,Object> model = mav.getModel();
		
		logger.info("leaving /events/changeMediaLabel");
		return model;		
	}
	
	@RequestMapping(value="/events/changeSortNumber",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> changeSortNumber(@RequestParam String jsonObjString) {
		logger.info("entering /events/changeSortNumber");

        JSONObject ic_job= new JSONObject(jsonObjString);
   
//      News news = new News();
//      news.setGlobalId(ic_job.getLong("globalId"));
        String mediaId = Integer.toString(ic_job.getInt("mediaId"));
        String eventUUID = ic_job.getString("eventUUID");
        String sortNumber = ic_job.getString("sortNumber");
                 
		/* business logic*/
        eventMediaService.changeSortNumber(mediaId, eventUUID, sortNumber);
		
        /* initial settings */
		ModelAndView mav = new ModelAndView();
		Map<String,Object> model = mav.getModel();
        //String viewName = "events/changeSortNumber";
		//mav.setViewName(viewName);		
		
		logger.info("leaving /events/changeSortNumber");
		return model;		
	}
	
}
