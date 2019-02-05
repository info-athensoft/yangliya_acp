package com.athensoft.school.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.stereotype.Repository;

import com.athensoft.base.dao.BaseDaoJdbcImpl;
import com.athensoft.school.entity.SchoolClass;

@Repository
@Qualifier("schoolClassDaoJdbcImpl")
public class SchoolClassDaoJdbcImpl extends BaseDaoJdbcImpl implements SchoolClassDao{

	private static final String TABLE = "school_class";
	
	@Override
	public List<SchoolClass> findAll() {
		String sql = "SELECT * FROM "+TABLE;

		MapSqlParameterSource paramSource = new MapSqlParameterSource();

		List<SchoolClass> x = new ArrayList<SchoolClass>();
		try {
			x = jdbc.query(sql, paramSource, new SchoolClassRowMapper());
		} catch (EmptyResultDataAccessException ex) {
			x = null;
		}
		return x;
	}
	
	@Override
	public SchoolClass findByClassCode(String classCode) {
		String sql = "SELECT * FROM "+TABLE +" WHERE class_code=:classCode";

		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("classCode", classCode);
		
		SchoolClass x = new SchoolClass();
		try {
			x = jdbc.queryForObject(sql, paramSource, new SchoolClassRowMapper());
		} catch (EmptyResultDataAccessException ex) {
			x = null;
		}
		return x;
	}

	private static class SchoolClassRowMapper implements RowMapper<SchoolClass> {
		public SchoolClass mapRow(ResultSet rs, int rowNumber) throws SQLException {
			SchoolClass x = new SchoolClass();
			x.setGlobalId(rs.getLong("global_id"));
			x.setClassId(rs.getLong("class_id"));
			x.setClassCode(rs.getString("class_code"));
			x.setClassLevel(rs.getInt("class_level"));
			x.setClassClass(rs.getInt("class_class"));
			x.setClassName(rs.getString("class_name"));
			x.setClassType(rs.getInt("class_type"));
			x.setClassOwner(rs.getString("class_owner"));
			x.setClassDesc(rs.getString("class_desc"));
			
			Timestamp rd = rs.getTimestamp("create_date");
			x.setCreateDate(rd == null ? null : new Date(rd.getTime()).toInstant().atZone(ZoneId.systemDefault()).toLocalDate());
			
			x.setMaxPerson(rs.getInt("max_person"));
			x.setClassStatus(rs.getInt("class_status"));
			return x;
		}
	}
}
