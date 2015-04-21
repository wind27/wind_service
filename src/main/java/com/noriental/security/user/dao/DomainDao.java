package com.noriental.security.user.dao;

import com.noriental.security.user.domain.Domain;

/**
 * 域信息 dao 操作.
 * 
 * @author 钱春
 * @version 1.0
 * 
 */
public interface DomainDao {

	Domain findByUserIdAndUserType(long userId, int userType);

	boolean create(Domain domain);
}
