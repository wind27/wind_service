package com.noriental.security.user.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.noriental.security.user.common.BaseDaoImpl;
import com.noriental.security.user.dao.TGradeDao;
import com.noriental.security.user.domain.TGrade;
import com.noriental.security.user.domain.TStage;

/**
 * 数据字典分类数据操作.
 * 
 * @author 钱春
 * @version 1.0
 * 
 */
@Repository("tGradeDao")
public class TGradeDaoImpl extends BaseDaoImpl<TGrade, Long> implements TGradeDao{
	private final String namespace = TGrade.class.getName();
	
	@Override
	public List<TGrade> find(Map<String, Object> params) {
		return super.findList(namespace+".find", params);
	}
	
	@Override
	public List<TGrade> findGradeByUserId(long userId) {
		return super.findList(namespace+".findGradeByUserId", userId);
	}

}
