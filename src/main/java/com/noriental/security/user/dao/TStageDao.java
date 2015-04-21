package com.noriental.security.user.dao;

import java.util.List;
import java.util.Map;

import com.noriental.security.user.domain.TGrade;
import com.noriental.security.user.domain.TStage;

/**
 * 数据字典分类数据操作.
 * 
 * @author 钱春
 * @version 1.0
 * 
 */
public interface TStageDao {

	TStage find(Map<String, Object> params);

	List<TStage> findStageByUserId(long userId);
}
