package com.noriental.security.user.service;


import java.util.List;
import java.util.Map;

import com.noriental.security.user.domain.TStage;

public interface TStageService {
	public TStage find(Map<String, Object> params);

	List<TStage> findStageByUserId(long userId);
}
