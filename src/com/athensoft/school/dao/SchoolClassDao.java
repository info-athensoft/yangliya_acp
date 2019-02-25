package com.athensoft.school.dao;

import java.util.List;

import com.athensoft.school.entity.SchoolClass;

public interface SchoolClassDao {
	public List<SchoolClass> findAll();
	
	public SchoolClass findByClassCode(String classCode);
	
	public int create(SchoolClass schoolClass);
}
