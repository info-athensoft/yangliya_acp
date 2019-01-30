package com.athensoft.school.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.athensoft.school.dao.SchoolReviewDao;
import com.athensoft.school.entity.SchoolReview;

/**
 * SchoolReview Service
 * @author Athens
 * @version 1.0
 */
@Service
public class SchoolReviewService {
	
	/**
	 * DAO of SchoolReview
	 */
	@Autowired
	@Qualifier("schoolReviewDaoJdbcImpl")
	private SchoolReviewDao schoolReviewDao;
	
	/**
	 * get an schoolReview object by its globalId
	 * @param globalId the globalId of schoolReview object
	 * @return the target schoolReview object
	 */
	public SchoolReview getSchoolReviewById(long globalId){
		return (SchoolReview)schoolReviewDao.findById(globalId);
	}
	
	/**
	 * get schoolReview objects by its eventUUID
	 * @param eventUUID the eventUUID of schoolReview object
	 * @return the list of schoolReview objects
	 */
	public List<SchoolReview> getSchoolReviewByTargetCode(String targetCode){
		return schoolReviewDao.findByTargetCode(targetCode);
	}
	
	/**
	 * get schoolReview objects by its eventUUID
	 * @param eventUUID the eventUUID of schoolReview object
	 * @return the list of schoolReview objects
	 */
	public List<SchoolReview> getSchoolReviewByFilter(String queryString){
		return schoolReviewDao.findByFilter(queryString);
	}
	
	/**
	 * get schoolReview object by reviewUUID
	 * @param reviewUUID the reviewUUID of schoolReview object
	 * @return the object of schoolReview
	 */
	public SchoolReview getSchoolReviewByReviewUUID(String reviewUUID){
		return schoolReviewDao.findByReviewUUID(reviewUUID);
	}
	
	/**
	 * get all schoolReview objects
	 * @return the list of schoolReview objects
	 */
	public List<SchoolReview> getAllSchoolReview() {
		return schoolReviewDao.findAll();
	}
	
	
	/**
	 * get latest reviews of news for shortcut control panel, shows 8 entries by default
	 * @param queryString
	 * @return
	 */
	public List<SchoolReview> getLatestReview(){
		final int DEFAULT_COUNT = 20;
		return getLatestReview(DEFAULT_COUNT);
	}
	
	/**
	 * get latest reviews of news for shortcut control panel by specified number
	 * @param count
	 * @return
	 */
	public List<SchoolReview> getLatestReview(int count){
		String queryString = " ORDER BY review_datetime DESC LIMIT "+count;
		return schoolReviewDao.findByFilter(queryString);
	}
	
	/**
	 * get total count of all news
	 * @return
	 */
	public long countAllReviews(){
		return schoolReviewDao.count();
	}
	
	/**
	 * create schoolReview and persist it
	 * @param review the schoolReview object to persist
	 */
	public void createSchoolReview(SchoolReview review) {
		this.schoolReviewDao.create(review);
	}
	
	/**
	 * update schoolReview and persist it
	 * @param review the schoolReview object to persist
	 */
	public void updateSchoolReview(SchoolReview review) {
		this.schoolReviewDao.update(review);
	}
	
	public void updateSchoolReviewStatus(SchoolReview review) {
		this.schoolReviewDao.updateStatus(review);
	}
}
