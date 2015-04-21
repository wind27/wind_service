package com.noriental.security.user.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.dubbo.common.logger.Logger;
import com.alibaba.dubbo.common.logger.LoggerFactory;
import com.noriental.security.user.dao.GroupLinkRoleDao;
import com.noriental.security.user.domain.GroupLinkRole;
import com.noriental.security.user.service.GroupLinkRoleService;

@Service("groupLinkRoleService")
public class GroupLinkRoleServiceImpl implements GroupLinkRoleService {

	private static final Logger logger = LoggerFactory.getLogger(GroupLinkRoleServiceImpl.class);

	
	@Autowired(required = true)
	private GroupLinkRoleDao groupLinkRoleDao;

	@Override
	public List<GroupLinkRole> findByRoleId(Long roleId) {
		return groupLinkRoleDao.findByRoleId(roleId);
	}
}
