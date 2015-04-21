package com.noriental.security.user.dao;

import java.util.List;

import com.noriental.security.user.domain.GroupLinkRole;

/**
 * 角色人员关系数据操作.
 * 
 * @author 钱春
 * @version 1.0
 * 
 */
public interface GroupLinkRoleDao {

	boolean deleteByGroupId(Long groupId);

	boolean batchCreate(List<GroupLinkRole> grList);

	List<GroupLinkRole> findByRoleId(Long roleId);
	List<GroupLinkRole> findByGroupId(Long groupId);
}
