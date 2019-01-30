package com.athensoft.school.controller;

import java.util.List;
import java.util.Map;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.athensoft.school.entity.SchoolReview;
import com.athensoft.school.service.SchoolReviewService;

import lombok.extern.log4j.Log4j;

/**
 * News Review Controller for ACP
 * 
 * @author Athens
 * @version 1.0
 */
@Controller
@RequestMapping("/school/review")
@Log4j
public class SchoolReviewController {

	/**
	 * SchoolReview Service instance
	 */
	@Autowired
	private SchoolReviewService schoolReviewService;

	/**
	 * get news review objects in JSON data form
	 * <p>
	 * WARNING: DO NOT GET ALL EVENTREVIEW OBJECT IN PRODUCT. JUST FOR TEST.
	 * 
	 * @return data table of new review objects
	 */
	@RequestMapping(value = "/list", produces = "application/json")
	@ResponseBody
	public Map<String, Object> getDataListNewsReview() {
		log.info("entering... /school/review/list");

		// data
		List<SchoolReview> listSchoolReview = schoolReviewService.getAllSchoolReview();
		log.info("Length of SchoolReview entries: " + listSchoolReview == null ? "NULL" : listSchoolReview.size());

		String[][] data = getData(listSchoolReview);

		ModelAndView mav = new ModelAndView();
		Map<String, Object> model = mav.getModel();
		model.put("draw", new Integer(1));
		model.put("recordsTotal", new Integer(5));
		model.put("recordsFiltered", new Integer(5));
		model.put("data", data);
		model.put("customActionStatus", "OK");
		model.put("customActionMessage", "OK");

		log.info("leaving /school/review/list");
		return model;
	}

	/**
	 * get news review objects in JSON data form
	 * <p>
	 * WARNING: DO NOT GET ALL EVENTREVIEW OBJECT IN PRODUCT. JUST FOR TEST.
	 * 
	 * @return data table of new review objects
	 */
	@RequestMapping(value = "/list/targetcode", produces = "application/json")
	@ResponseBody
	public Map<String, Object> getDataListNewsReviewByTargetCode(@RequestParam String targetCode) {
		log.info("entering /school/review/targetcode");

		// data
		List<SchoolReview> listSchoolReview = schoolReviewService.getSchoolReviewByTargetCode(targetCode);
		log.info("Length of SchoolReview entries: " + listSchoolReview == null ? "NULL" : listSchoolReview.size());

		String[][] data = getData(listSchoolReview);

		ModelAndView mav = new ModelAndView();
		Map<String, Object> model = mav.getModel();
		model.put("draw", new Integer(1));
		model.put("recordsTotal", new Integer(5));
		model.put("recordsFiltered", new Integer(5));
		model.put("data", data);
		model.put("customActionStatus", "OK");
		model.put("customActionMessage", "OK");

		log.info("leaving /school/review/targetcode");
		return model;
	}

	/**
	 * get news review objects in JSON data form, which comply with criteria the
	 * data for showing in datatable in front-end pages is contained in a
	 * 2-dimension array
	 * 
	 * @param jsonObjString
	 *            search criteria object in JSON format
	 * @return a map structure containing data rendered to views
	 */
	@RequestMapping(value = "/search", produces = "application/json")
	@ResponseBody
	public Map<String, Object> getDataSearchNewsReviewByFilter(@RequestParam String jsonObjString) {
		log.info("entering... /events/review/search");

		JSONObject jobj = new JSONObject(jsonObjString);

		String where1 = jobj.getString("schoolReviewNo").trim();

		/* where2a, where2b */
		String strSchoolReviewDateFrom = jobj.getString("schoolReviewDateFrom").trim();
		String strSchoolReviewDateTo = jobj.getString("schoolReviewDateTo").trim();

		if (strSchoolReviewDateFrom == null) {
			strSchoolReviewDateFrom = "";
		}
		if (strSchoolReviewDateTo == null) {
			strSchoolReviewDateTo = "";
		}
		String where2a = strSchoolReviewDateFrom;
		String where2b = strSchoolReviewDateTo;

		log.info("strViewNumFrom=" + strSchoolReviewDateFrom + "##");
		log.info("strViewNumTo=" + strSchoolReviewDateTo + "##");

		String where3 = jobj.getString("schoolReviewCustomer").trim();
		String where4 = jobj.getString("schoolReviewContent").trim();
		int where5 = jobj.getInt("schoolReviewStatus");

		/* construct query string */
		StringBuffer queryString = new StringBuffer();
		queryString.append(where1.length() == 0 ? " " : " and review_uuid like '%" + where1 + "%' ");

		String queryString_where2 = "";
		if (strSchoolReviewDateFrom.equals("") && strSchoolReviewDateTo.equals("")) {
			queryString_where2 = " ";
		} else if (!strSchoolReviewDateFrom.equals("") && strSchoolReviewDateTo.equals("")) {
			/*
			 * select * from event_review where date(post_datetime) >=
			 * adddate('2017-01-12', -1);
			 */
			queryString_where2 = " and date(review_datetime) >= '" + where2a + "' ";
		} else if (strSchoolReviewDateFrom.equals("") && !strSchoolReviewDateTo.equals("")) {
			/*
			 * select * from event_review where date(post_datetime) <=
			 * '2017-02-05';
			 */
			queryString_where2 = " and date(review_datetime) <= '" + where2b + "' ";
		} else if (!strSchoolReviewDateFrom.equals("") && !strSchoolReviewDateTo.equals("")) {
			/*
			 * select * from event_news where date(post_datetime) between
			 * adddate('2017-01-12', -1) and '2017-02-05';
			 */

			int dateFlag = strSchoolReviewDateFrom.compareTo(strSchoolReviewDateTo);
			if (dateFlag < 0) {
				queryString_where2 = " and (date(review_datetime) between adddate('" + where2a + "', -1) and '"
						+ where2b + "' ) ";
			} else if (dateFlag == 0) {
				queryString_where2 = " and (date(review_datetime) =  '" + where2a + "' ) ";
			} else {
				queryString_where2 = " and (date(review_datetime) between adddate('" + where2b + "', -1) and '"
						+ where2a + "' ) ";
			}
		}
		queryString.append(queryString_where2);

		queryString.append(where3.length() == 0 ? " " : " and customer_id like '%" + where3 + "%' ");
		queryString.append(where4.length() == 0 ? " " : " and review_content like '%" + where4 + "%' ");

		queryString.append(where5 == 0 ? " " : " and review_status = " + where5 + " ");

		log.info("QueryString = " + queryString.toString());

		// List<Event> listNews =
		// newsService.getNewsByFilter(queryString.toString());
		// log.info("Length of news entries = "+ listNews.size());

		List<SchoolReview> listSchoolReview = schoolReviewService.getSchoolReviewByFilter(queryString.toString());
		log.info("Length of news review entries = " + listSchoolReview.size());

		String[][] data = getData(listSchoolReview);

		ModelAndView mav = new ModelAndView();

		// data
		Map<String, Object> model = mav.getModel();
		model.put("draw", new Integer(1));
		model.put("recordsTotal", new Integer(5));
		model.put("recordsFiltered", new Integer(5));
		model.put("data", data);
		model.put("customActionStatus", "OK");
		model.put("customActionMessage", "OK");

		log.info("leaving... /events/review/search");

		return model;
	}

	/**
	 * goto event-news review edit page with data for updating
	 * 
	 * @param targetCode
	 *            the targetCode of new object selected
	 * @return data of review objects of news
	 */
	@RequestMapping(value = "/edit.html")
	public ModelAndView gotoEditSchoolReview(@RequestParam String reviewUUID) {
		log.info("entering... /school/review/edit.html");

		// data - review
		SchoolReview schoolReview = schoolReviewService.getSchoolReviewByReviewUUID(reviewUUID);
		log.info("schoolReview: " + schoolReview.toString());

		ModelAndView mav = new ModelAndView();
		Map<String, Object> model = mav.getModel();
		model.put("schoolReview", schoolReview);
		// view
		String viewName = "event/review_edit";
		mav.setViewName(viewName);

		log.info("leaving... /school/review/edit.html");
		return mav;
	}

	/**
	 * update news review object
	 * 
	 * @param jsonObjString
	 *            news object to update in JSON format
	 * @return data and target view
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST, consumes="application/json", produces="application/json")
	@ResponseBody
	public void updateNewsReview(@RequestBody ReviewDTO review) {
		log.info("entering /school/review/update");

//		JSONObject ic_job = new JSONObject(jsonObjString);

		SchoolReview newsReview = new SchoolReview();
		newsReview.setTargetCode(review.getTargetCode());
		newsReview.setReviewUUID(review.getReviewUUID());
		newsReview.setReviewStatus(review.getReviewStatus());

		log.info("newsReview = " + newsReview);

		/* business logic */
		schoolReviewService.updateSchoolReviewStatus(newsReview);

		log.info("leaving /school/review/update");
		return;
	}

	private String[][] getData(List<SchoolReview> listSchoolReview) {
		int entryLength = listSchoolReview.size();
		final int COLUMN_NUM = 6; // the number of column showing in the
									// data-table at the front web page
		String[][] data = new String[entryLength][COLUMN_NUM];

		String field0 = ""; // review UUID, review no.
		String field1 = ""; // review datetime
		String field2 = ""; // review customer
		String field3 = ""; // review content
		String field4 = ""; // review status
		String field5 = ""; // action

		for (int i = 0; i < entryLength; i++) {
			field0 = listSchoolReview.get(i).getReviewUUID() + "";
			field1 = listSchoolReview.get(i).getReviewDateTime() + "";
			// field2 = listSchoolReview.get(i).getCustomerId()+"";
			field2 = listSchoolReview.get(i).getAcctName();
			field3 = listSchoolReview.get(i).getReviewContent();

			int intSchoolReviewStatus = listSchoolReview.get(i).getReviewStatus();
			String schoolReviewStatus = "";
			String schoolReviewStatusKey = "";
			switch (intSchoolReviewStatus) {
			case SchoolReview.APPROVED:
				schoolReviewStatus = "已通过";
				schoolReviewStatusKey = "success";
				break;
			case SchoolReview.PENDING:
				schoolReviewStatus = "审查中";
				schoolReviewStatusKey = "warning";
				break;
			case SchoolReview.REJECTED:
				schoolReviewStatus = "已拒绝";
				schoolReviewStatusKey = "danger";
				break;
			default:
				schoolReviewStatus = "未知";
				schoolReviewStatusKey = "default";
				break;
			}

			field4 = "<span class='label label-sm label-" + schoolReviewStatusKey + "'>" + schoolReviewStatus + "</span>";
			field5 = "<a href='/acp/school/review/edit.html?reviewUUID=" + field0
					+ "' class='btn btn-xs default btn-editable'><i class='fa fa-pencil'></i> 管理</a>";

			data[i][0] = field0;
			data[i][1] = field1;
			data[i][2] = field2;
			data[i][3] = field3;
			data[i][4] = field4;
			data[i][5] = field5;
		}

		return data;
	}
	
	public static class ReviewDTO {
		private String targetCode;
		private String reviewUUID;
		private int reviewStatus;
		public String getTargetCode() {
			return targetCode;
		}
		public void setTargetCode(String targetCode) {
			this.targetCode = targetCode;
		}
		public String getReviewUUID() {
			return reviewUUID;
		}
		public void setReviewUUID(String reviewUUID) {
			this.reviewUUID = reviewUUID;
		}
		public int getReviewStatus() {
			return reviewStatus;
		}
		public void setReviewStatus(int reviewStatus) {
			this.reviewStatus = reviewStatus;
		}
		@Override
		public String toString() {
			return "ReviewDTO [targetCode=" + targetCode + ", reviewUUID=" + reviewUUID + ", reviewStatus=" + reviewStatus
					+ "]";
		}
	}

}
