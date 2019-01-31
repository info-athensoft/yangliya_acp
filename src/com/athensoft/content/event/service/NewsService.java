package com.athensoft.content.event.service;

import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.athensoft.content.event.dao.EventMediaDao;
import com.athensoft.content.event.dao.EventReviewDao;
import com.athensoft.content.event.dao.NewsDao;
import com.athensoft.content.event.entity.Event;
import com.athensoft.content.event.entity.EventMedia;
import com.athensoft.content.event.entity.EventReview;
import com.athensoft.content.event.entity.EventStatus;
import com.athensoft.content.event.entity.News;
import com.athensoft.content.event.entity.NewsAction;

/**
 * News Service
 * @author Athens
 * @version 1.0
 */

@Service
public class NewsService {
	
	/**
	 * DAO of News
	 */
	@Autowired
	@Qualifier("newsDaoJdbcImpl")
	private NewsDao newsDao;
	
	@Autowired
	@Qualifier("eventMediaDaoJdbcImpl")
	private EventMediaDao eventMediaDao;
	
	@Autowired
	@Qualifier("eventReviewDaoJdbcImpl")
	private EventReviewDao eventReviewDao;

	
	/**
	 * get a news object by its globalId
	 * @param globalId the globalId of news object
	 * @return the target News object
	 */
	public News getNewsById(long globalId){
		return (News)newsDao.findById(globalId);
	}
	
	/**
	 * get a news object by its eventUUID
	 * @param eventUUID the eventUUID of news object
	 * @return the target News object
	 */
	public News getNewsByEventUUID(String eventUUID){
		return (News)newsDao.findByEventUUID(eventUUID);
	}
	
	/**
	 * get news objects by search criteria
	 * @param queryString search criteria for qualified news objects
	 * @return list of news object
	 */
	public List<Event> getNewsByFilter(String queryString){
		return newsDao.findByFilter(queryString);
	}
	
	/**
	 * get latest news for shortcut control panel, shows 8 entries by default
	 * @param queryString
	 * @return
	 */
	public List<Event> getLatestNews(){
		final int DEFAULT_COUNT = 8;
		return getLatestNews(DEFAULT_COUNT);
	}
	
	/**
	 * get latest news for shortcut control panel by specified number
	 * @param count
	 * @return
	 */
	public List<Event> getLatestNews(int count){
		String queryString = " ORDER BY post_date DESC LIMIT "+count;
		return newsDao.findByFilter(queryString);
	}
	
	public List<Event> getAllMarkedDeletedNews(){
		String queryString = " AND event_status ="+ EventStatus.DELETED;
		return newsDao.findByFilter(queryString);
	}

	/**
	 * get all news objects<p>
	 * WARNING: DO NOT USE THIS METHOD IN PRODUCT. JUST FOR TEST.
	 * @return list of news objects
	 */
	public List<Event> getAllNews(){
		return newsDao.findAll();
	}
	
	/**
	 * get total count of all news
	 * @return
	 */
	public long countAllNews(){
		return newsDao.count();
	}
	
	/**
	 * create a news object and persist it
	 * @param news a news object to persist
	 */
	public void createNews(News news) {
		this.newsDao.create(news);
		return;
	}

	/**
	 * update a news object and persist it
	 * @param news a news object to persist
	 */
	public void updateNews(News news) {
		this.newsDao.update(news);
	}
	
	/**
	 * update news objects and persist them in batch
	 * @param newsList
	 */
	public void updateNewsGroup(List<News> newsList) {
		this.newsDao.updateBatch(newsList);
	}

	/**
	 * @param eventUUID
	 */
	public void markNewsStatusDeleted(String eventUUID) {
		this.newsDao.markDeleted(eventUUID);
	}
	
	@Transactional
	public void deleteNews(News newsDTO) {
		this.newsDao.delete(newsDTO);
		EventMedia eventMediaDTO = new EventMedia();
		eventMediaDTO.setEventUUID(newsDTO.getEventUUID());
		this.eventMediaDao.delete(eventMediaDTO);
		EventReview eventReviewDTO = new EventReview();
		eventReviewDTO.setEventUUID(newsDTO.getEventUUID());
		this.eventReviewDao.delete(eventReviewDTO);
	}
	
	/**
	 * delete news objects and persist them in batch
	 * @param newsList
	 */
	public void deleteNewsGroup(List<News> newsDTOList) {
		this.newsDao.deleteBatch(newsDTOList);
	}
	

	public String[][] getData(List<Event> listNews, String action) {
		int entryLength = listNews.size();
		final int COLUMN_NUM = 9;
		String[][] data = new String[entryLength][COLUMN_NUM];

		String field0 = ""; // check box
		String field1 = ""; // event UUID
		String field2 = ""; // event title
		String field3 = ""; // author
		String field4 = ""; // event class
		String field5 = ""; // post datetime
		String field6 = ""; // view num
		String field7 = ""; // event status
		String field8 = ""; // action

		for (int i = 0; i < entryLength; i++) {
			field0 = "<input type='checkbox' name='id[]' value=" + listNews.get(i).getEventUUID() + ">";
			field1 = listNews.get(i).getEventUUID() + "";
			field2 = listNews.get(i).getTitle();
			field3 = listNews.get(i).getAuthor();

			String strEventClass = (listNews.get(i).getEventClass()).trim();
			field4 = getEventClass(strEventClass);
			
			final String DATE_FORMAT = "yyyy-MM-dd hh:mm";
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern(DATE_FORMAT);
			field5 = listNews.get(i).getModifyDate().toInstant().atZone(ZoneId.systemDefault()).toLocalDateTime().format(formatter) + "";
			field6 = listNews.get(i).getViewNum() + "";

			int intEventStatus = listNews.get(i).getEventStatus();
			String[] eventStatusPair = getEventStatusPair(intEventStatus);
			String eventStatusKey = eventStatusPair[0];
			String eventStatus = eventStatusPair[1];
			field7 = "<span class='label label-sm label-" + eventStatusKey + "'>" + eventStatus + "</span>";
			field8 = "<a href='" + getActionUrl(action) + "?eventUUID=" + field1
					+ "' class='btn btn-xs default btn-editable'><i class='fa fa-pencil'></i> " + getActionName(action) + "</a>";

			// log.info("field8="+field8);

			data[i][0] = field0;
			data[i][1] = field1;
			data[i][2] = field2;
			data[i][3] = field3;
			data[i][4] = field4;
			data[i][5] = field5;
			data[i][6] = field6;
			data[i][7] = field7;
			data[i][8] = field8;
		}

		return data;
	}

	public String getEventClass(String strEventClass) {

		int intEventClass = Integer.parseInt(strEventClass);
		String eventClass = "";
		switch (intEventClass) {
		case News.CLASS_DEFAULT:
			eventClass = "普通";
			break;
		case News.CLASS_NEW:
			eventClass = "新";
			break;
		case News.CLASS_HOT:
			eventClass = "热";
			break;
		default:
			eventClass = "未知";
			break;
		}

		return eventClass;
	}

	public String[] getEventStatusPair(int intEventStatus) {
		String[] eventStatusPair = new String[2];

		String eventStatus = "";
		String eventStatusKey = "";
		switch (intEventStatus) {
		case News.PUBLISHED:
			eventStatus = "已发布";
			eventStatusKey = "success";
			break;
		case News.WAIT_TO_POST:
			eventStatus = "待发布";
			eventStatusKey = "warning";
			break;
		case News.DELETED:
			eventStatus = "已删除";
			eventStatusKey = "default";
			break;
		case News.OUT_OF_DATE:
			eventStatus = "已过期";
			eventStatusKey = "info";
			break;
		case News.SUSPENDED:
			eventStatus = "审查中";
			eventStatusKey = "danger";
			break;
		default:
			break;
		}

		eventStatusPair[0] = eventStatusKey;
		eventStatusPair[1] = eventStatus;

		return eventStatusPair;
	}

	public String getActionUrl(String action) {
		String actionUrl = "";
		switch (action) {
		case NewsAction.EDIT:
			actionUrl = "/acp/events/news/edit.html";
			break;
		case NewsAction.DELETE:
			actionUrl = "/acp/events/news/delete.html";
			break;
		}
		return actionUrl;
	}
	
	public String getActionName(String action){
		String actionName = "";
		switch(action){
			case NewsAction.VIEW:
				actionName = "查看";	//adPost Button Name - view
				break;
			case NewsAction.EDIT:
				actionName = "编辑";	//adPost Button Name - edit
				break;
			case NewsAction.DELETE:
				actionName = "删除";	//adPost Button Name - delete
				break;
			case NewsAction.MANAGE:
				actionName = "管理";	//adPost Button Name - view
				break;
			default:
				actionName = "未定义";
		}
		return actionName;
	}

}
