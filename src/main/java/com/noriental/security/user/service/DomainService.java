package com.noriental.security.user.service;

import com.noriental.security.user.domain.Domain;

/**
 * 域信息 Service 接口.
 * 
 * @author 钱春
 * @version 1.0
 * 
 */
public interface DomainService {
	public Domain findByUserIdAndUserType(long userId, int userType);
	public boolean create(Domain domain);
}
