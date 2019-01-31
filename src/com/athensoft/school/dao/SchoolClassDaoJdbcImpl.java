package com.athensoft.school.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.athensoft.school.entity.SchoolClass;
import com.athensoft.school.entity.SchoolReview;

@Repository
@Qualifier("schoolClassDaoJdbcImpl")
public class SchoolClassDaoJdbcImpl implements SchoolClassDao{

	@Override
	public List<SchoolClass> findAll() {
		// TODO Auto-generated method stub
		return null;
	}
	
	private static class SchoolClassRowMapper implements RowMapper<SchoolClass> {
		public SchoolClass mapRow(ResultSet rs, int rowNumber) throws SQLException {
			SchoolClass x = new SchoolClass();
			x.setClassId(rs.getLong("class_id"));
			x.setClassCode(rs.getString("class_code"));
			x.setClassLevel(rs.getInt("class_level"));
			x.setClassClass(rs.getInt("class_class"));
			x.setClassName(rs.getString("class_name"));
//			x.setReviewContent(rs.getString("review_content"));
//			x.setAcctName(rs.getString("acct_name"));
//			x.setReviewStatus(rs.getInt("review_status"));
			Timestamp rd = rs.getTimestamp("review_datetime");
			x.setCreateDate(rd == null ? null : new Date(rd.getTime()).toInstant().atZone(ZoneId.systemDefault()).toLocalDate());
			return x;
			
			/*
			 * private long globalId;
	private int classId;
	private String classCode;
	private String classType;
	private int classLevel;
	private int classClass;
	private String className;
	private String classOwner;
	private LocalDate createDate;
	private int maxPerson;
	private String classDesc;
			 */
			 
		}
	}
}
