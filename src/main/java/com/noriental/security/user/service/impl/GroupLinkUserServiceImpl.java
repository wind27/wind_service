package com.noriental.security.user.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.dubbo.common.logger.Logger;
import com.alibaba.dubbo.common.logger.LoggerFactory;
import com.noriental.security.user.dao.GroupLinkUserDao;
import com.noriental.security.user.domain.GroupLinkUser;
import com.noriental.security.user.service.GroupLinkUserService;

@Service("groupLinkUserService")
public class GroupLinkUserServiceImpl implements GroupLinkUserService {
	@Autowired(required = true)
	private GroupLinkUserDao groupLinkUserDao;

	@Override
	public List<GroupLinkUser> find(GroupLinkUser gu) {
		return groupLinkUserDao.find(gu);
	}

	@Override
	public boolean batchCreate(List<GroupLinkUser> groupLinkUsList) {
		return groupLinkUserDao.batchCreate(groupLinkUsList);
	}

	@Override
	public boolean deleteByUserIdAndType(long userId, int userType) {
		return groupLinkUserDao.deleteByUserIdAndType(userId, userType);
	}
}
