package com.athensoft.school.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.stereotype.Component;

import com.athensoft.base.dao.BaseDaoJdbcImpl;
import com.athensoft.school.entity.SchoolReview;

@Component
@Qualifier("schoolReviewDaoJdbcImpl")
public class SchoolReviewDaoJdbcImpl extends BaseDaoJdbcImpl implements SchoolReviewDao {
	private static final Logger logger = Logger.getLogger(SchoolReviewDaoJdbcImpl.class);

	private static final String TABLE = "school_review";

	@Override
	public List<SchoolReview> findAll() {
		String sql = "select * from " + TABLE;

		MapSqlParameterSource paramSource = new MapSqlParameterSource();

		List<SchoolReview> x = new ArrayList<SchoolReview>();
		try {
			x = jdbc.query(sql, paramSource, new EventReviewRowMapper());
		} catch (EmptyResultDataAccessException ex) {
			x = null;
		}
		return x;
	}

	@Override
	public List<SchoolReview> findByFilter(String queryString) {
		StringBuffer sbf = new StringBuffer();
		sbf.append(" select * from " + TABLE);
		sbf.append(" where 1=1 ");
		sbf.append(queryString);
		String sql = sbf.toString();

		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		List<SchoolReview> x = new ArrayList<SchoolReview>();
		try {
			x = jdbc.query(sql, paramSource, new EventReviewRowMapper());
		} catch (EmptyResultDataAccessException ex) {
			x = null;
		}
		return x;
	}

	@Override
	public List<SchoolReview> findByTargetCode(String targetCode) {
		String sql = "select * from " + TABLE + " where target_code = :targetCode";

		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("targetCode", targetCode);

		List<SchoolReview> x = new ArrayList<SchoolReview>();
		try {
			x = jdbc.query(sql, paramSource, new EventReviewRowMapper());
		} catch (EmptyResultDataAccessException ex) {
			x = null;
		}
		return x;
	}

	@Override
	public SchoolReview findById(long globalId) {
		String sql = "select * from " + TABLE + " where global_id = :global_id";

		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("global_id", globalId);

		SchoolReview x = null;
		try {
			x = jdbc.queryForObject(sql, paramSource, new EventReviewRowMapper());
		} catch (EmptyResultDataAccessException ex) {
			x = null;
		}
		return x;
	}

	@Override
	public SchoolReview findByReviewUUID(String reviewUUID) {
		String sql = "select * from " + TABLE + " where review_uuid = :review_uuid";

		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("review_uuid", reviewUUID);

		SchoolReview x = null;
		try {
			x = jdbc.queryForObject(sql, paramSource, new EventReviewRowMapper());
		} catch (EmptyResultDataAccessException ex) {
			x = null;
		}
		return x;
	}

	@Override
	public long count() {
		String sql = "SELECT COUNT(*) from " + TABLE;

		MapSqlParameterSource paramSource = new MapSqlParameterSource();

		return (Long) jdbc.queryForObject(sql, paramSource, Long.class);
	}

	@Override
	public int create(SchoolReview review) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(SchoolReview review) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("update " + TABLE + " ");
		sbf.append("set ");
		sbf.append("entity_id = :entityId, ");
		sbf.append("review_content = :reviewContent, ");
		sbf.append("review_datetime = :reviewDatetime ");
		sbf.append("where ");
		sbf.append("review_uuid = :reviewUUID");

		String sql = sbf.toString();
		logger.info("sql =" + sql);

		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("reviewUUID", review.getReviewUUID());
		paramSource.addValue("reviewContent", review.getReviewContent());
		paramSource.addValue("reviewDatetime", review.getReviewDateTime());
		
		paramSource.addValue("entityId", review.getEntityId());

		return jdbc.update(sql, paramSource);
	}

	@Override
	public int updateStatus(SchoolReview x) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("UPDATE " + TABLE + " ");
		sbf.append("SET ");
		sbf.append("review_status = :review_status ");
		sbf.append(" WHERE ");
		sbf.append(" review_uuid = :review_uuid");

		String sql = sbf.toString();
		logger.info("sql =" + sql);

		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("review_uuid", x.getReviewUUID());
		paramSource.addValue("review_status", x.getReviewStatus());

		return jdbc.update(sql, paramSource);
	}

	@Override
	public int delete(SchoolReview eventReviewDTO) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("DELETE FROM ").append(TABLE);
		sbf.append(" WHERE ");
		sbf.append(" target_code =:targetCode");
		
		String sql = sbf.toString();
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("targetCode", eventReviewDTO.getTargetCode());

		return jdbc.update(sql, paramSource);
	}

	private static class EventReviewRowMapper implements RowMapper<SchoolReview> {
		public SchoolReview mapRow(ResultSet rs, int rowNumber) throws SQLException {
			SchoolReview x = new SchoolReview();
			x.setGlobalId(rs.getLong("global_id"));
			x.setTargetCode(rs.getString("target_code"));
			x.setReviewUUID(rs.getString("review_uuid"));
			x.setEntityId(rs.getLong("entity_id"));
			x.setEntityCode(rs.getString("entity_code"));
			x.setReviewContent(rs.getString("review_content"));
			x.setAcctName(rs.getString("acct_name"));
			x.setReviewStatus(rs.getInt("review_status"));
			Timestamp rd = rs.getTimestamp("review_datetime");
			x.setReviewDateTime(rd == null ? null : new Date(rd.getTime()));
			return x;
		}
	}

}
