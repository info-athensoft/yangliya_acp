package com.athensoft.school.entity;

import java.time.LocalDate;

public class SchoolClass {
	private long globalId;
	private long classId;
	private String classCode;
	private int classType;
	private int classLevel;
	private int classClass;
	private String className;
	private String classOwner;
	private LocalDate createDate;
	private int maxPerson;
	private String classDesc;
	private int classStatus;
	
	public long getGlobalId() {
		return globalId;
	}
	public void setGlobalId(long globalId) {
		this.globalId = globalId;
	}
	public long getClassId() {
		return classId;
	}
	public void setClassId(long classId) {
		this.classId = classId;
	}
	public String getClassCode() {
		return classCode;
	}
	public void setClassCode(String classCode) {
		this.classCode = classCode;
	}
	public int getClassType() {
		return classType;
	}
	public void setClassType(int classType) {
		this.classType = classType;
	}
	public int getClassLevel() {
		return classLevel;
	}
	public void setClassLevel(int classLevel) {
		this.classLevel = classLevel;
	}
	public int getClassClass() {
		return classClass;
	}
	public void setClassClass(int classClass) {
		this.classClass = classClass;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getClassOwner() {
		return classOwner;
	}
	public void setClassOwner(String classOwner) {
		this.classOwner = classOwner;
	}
	public LocalDate getCreateDate() {
		return createDate;
	}
	public void setCreateDate(LocalDate createDate) {
		this.createDate = createDate;
	}
	public int getMaxPerson() {
		return maxPerson;
	}
	public void setMaxPerson(int maxPerson) {
		this.maxPerson = maxPerson;
	}
	public String getClassDesc() {
		return classDesc;
	}
	public void setClassDesc(String classDesc) {
		this.classDesc = classDesc;
	}
	
	public int getClassStatus() {
		return classStatus;
	}
	public void setClassStatus(int classStatus) {
		this.classStatus = classStatus;
	}
	@Override
	public String toString() {
		return "SchoolClass [globalId=" + globalId + ", classId=" + classId + ", classCode=" + classCode
				+ ", classType=" + classType + ", classLevel=" + classLevel + ", classClass=" + classClass
				+ ", className=" + className + ", classOwner=" + classOwner + ", createDate=" + createDate
				+ ", maxPerson=" + maxPerson + ", classDesc=" + classDesc + ", classStatus=" + classStatus + "]";
	}
	
	
	
	
}
