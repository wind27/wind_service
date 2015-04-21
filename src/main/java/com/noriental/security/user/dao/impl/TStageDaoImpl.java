package com.noriental.security.user.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.noriental.security.user.common.BaseDaoImpl;
import com.noriental.security.user.dao.TStageDao;
import com.noriental.security.user.domain.TGrade;
import com.noriental.security.user.domain.TStage;

/**
 * 数据字典分类数据操作.
 * 
 * @author 钱春
 * @version 1.0
 * 
 */
@Repository("tStageDao")
public class TStageDaoImpl  extends BaseDaoImpl<TStage, Long> implements TStageDao{
	private final String namespace = TStage.class.getName();

	@Override
	public TStage find(Map<String, Object> params) {
		return super.find(namespace+".find", params);
	}
	@Override
	public List<TStage> findStageByUserId(long userId) {
		return super.findList(namespace+".findStageByUserId", userId);
	}
}
