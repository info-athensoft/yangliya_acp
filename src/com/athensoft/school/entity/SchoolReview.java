package com.athensoft.school.entity;

import java.time.LocalDateTime;

public class SchoolReview {
	private long globalId;
	private String targetCode;
	private String reviewUUID;
	private long entityId;
	private String acctName;
	private LocalDateTime reviewDateTime;
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
	public LocalDateTime getReviewDateTime() {
		return reviewDateTime;
	}
	public void setReviewDateTime(LocalDateTime reviewDateTime) {
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
	@Override
	public String toString() {
		return "SchoolReview [globalId=" + globalId + ", targetCode=" + targetCode + ", reviewUUID=" + reviewUUID
				+ ", entityId=" + entityId + ", acctName=" + acctName + ", reviewDateTime=" + reviewDateTime
				+ ", reviewStatus=" + reviewStatus + ", reviewContent=" + reviewContent + "]";
	}
}
