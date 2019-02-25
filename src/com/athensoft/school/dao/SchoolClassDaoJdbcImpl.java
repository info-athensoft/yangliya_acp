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
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
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

	@Override
	public int create(SchoolClass x) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("INSERT INTO ").append(TABLE);
		sbf.append(" (");
		sbf.append(" class_code,");
		sbf.append(" class_name,");
		sbf.append(" class_type,");
		sbf.append(" class_owner,");
		sbf.append(" create_date,");
		sbf.append(" max_person,");
		sbf.append(" class_desc,");
		sbf.append(" class_status");
		sbf.append(" ) VALUES(");
		sbf.append(" :class_code,");
		sbf.append(" :class_name,");
		sbf.append(" :class_type,");
		sbf.append(" :class_owner,");
		sbf.append(" :create_date,");
		sbf.append(" :max_person,");
		sbf.append(" :class_desc,");
		sbf.append(" :class_status");
		sbf.append(")");
		
		String sql = sbf.toString();

		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("class_code", x.getClassCode());
		paramSource.addValue("class_name", x.getClassName());
		paramSource.addValue("class_type", x.getClassType());
		paramSource.addValue("class_owner", x.getClassOwner());
		paramSource.addValue("create_date", Date.from(x.getCreateDate().atStartOfDay(ZoneId.systemDefault()).toInstant()));
		paramSource.addValue("max_person", x.getMaxPerson());
		paramSource.addValue("class_desc", x.getClassDesc());
		paramSource.addValue("class_status", x.getClassStatus());

		KeyHolder keyholder = new GeneratedKeyHolder();

		return jdbc.update(sql, paramSource, keyholder);
		
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
