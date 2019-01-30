package com.athensoft.school.entity;

import java.util.Date;

public class SchoolReview {
public static final int UNKNOWN = 0;
	
	/**
	 * the status of review, constant value, APPROVED = 1
	 */
	public static final int APPROVED = 1;
	
	/**
	 * the status of review, constant value, PENDING = 2
	 */
	public static final int PENDING = 2;
	
	/**
	 * the status of review, constant value, REJECTED = 3
	 */
	public static final int REJECTED = 3;
	
	private long globalId;
	private String targetCode;
	private String reviewUUID;
	private long entityId;
	private String entityCode;
	private String acctName;
	private String reviewer;
	private Date reviewDateTime;
	private int reviewStatus;
	private String reviewContent;
	
	
	public long getGlobalId() {
		return globalId;
	}
	public void setGlobalId(long globalId) {
		this.globalId = globalId;
	}
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
	public long getEntityId() {
		return entityId;
	}
	public void setEntityId(long entityId) {
		this.entityId = entityId;
	}
	public String getAcctName() {
		return acctName;
	}
	public void setAcctName(String acctName) {
		this.acctName = acctName;
	}
	public Date getReviewDateTime() {
		return reviewDateTime;
	}
	public void setReviewDateTime(Date reviewDateTime) {
		this.reviewDateTime = reviewDateTime;
	}
	public int getReviewStatus() {
		return reviewStatus;
	}
	public void setReviewStatus(int reviewStatus) {
		this.reviewStatus = reviewStatus;
	}
	public String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	
	public String getReviewer() {
		return reviewer;
	}
	public void setReviewer(String reviewer) {
		this.reviewer = reviewer;
	}
	
	public String getEntityCode() {
		return entityCode;
	}
	public void setEntityCode(String entityCode) {
		this.entityCode = entityCode;
	}
	@Override
	public String toString() {
		return "SchoolReview [globalId=" + globalId + ", targetCode=" + targetCode + ", reviewUUID=" + reviewUUID
				+ ", entityId=" + entityId + ", entityCode=" + entityCode + ", acctName=" + acctName + ", reviewer="
				+ reviewer + ", reviewDateTime=" + reviewDateTime + ", reviewStatus=" + reviewStatus
				+ ", reviewContent=" + reviewContent + "]";
	}
	
}