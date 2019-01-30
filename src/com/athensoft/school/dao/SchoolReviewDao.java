package com.athensoft.school.dao;

import java.util.List;

import com.athensoft.school.entity.SchoolReview;

/**
 * A DAO interface of {@link SchoolReview}
 * 
 * @author Athens
 * @version 1.0 
 */
public interface SchoolReviewDao {
	/**
	 * get all event review objects<p>
	 * WARNING: DO NOT USE THIS METHOD IN PRODUCT, JUST FOR TEST.
	 * @return	list of event review objects
	 */
	public List<SchoolReview> findAll();
	
	/**
	 * get all objects which comply with query criteria
	 * @param queryString search criteria of event reviews
	 * @return	list of event review objects
	 */
	public List<SchoolReview> findByFilter(String queryString);

	/**
	 * get event review object by its gloablId
	 * @param globalId the globlaId of news review object
	 * @return a event review object
	 */
	public SchoolReview findById(long globalId);

	/**
	 * get all event review objects by eventUUID
	 * @param eventUUID the eventUUID of news object
	 * @return	list of event review objects
	 */
	public List<SchoolReview> findByTargetCode(String targetCode);
	
	/**
	 * get event review object by its reviewUUID
	 * @param reviewUUID the reviewUUID of review object
	 * @return an event review object
	 */
	public SchoolReview findByReviewUUID(String reviewUUID);	
	
	/**
	 * get total count of all reviews
	 * @return
	 */
	public long count();
	
	/**
	 * create an event review object and persist it
	 * @param review an event review object
	 */
	public int create(SchoolReview review);
	
	/**
	 * update an event review object and persist it
	 * @param review an event review object
	 */
	public int update(SchoolReview review);
	
	
	/**
	 * @param review
	 */
	public int updateStatus(SchoolReview review);
	
	/**
	 * remove an event review object from data source<p>
	 * WARNING: THE METHOD HAS NOT COMPLETED.
	 */
	public int delete(SchoolReview schoolReviewDTO);
	
	
}
