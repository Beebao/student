/**  
 * All rights Reserved, Designed By vito
 * @Title:  RoleService.java   
 * @Package com.vito.ssm.service   
 * @Description:    TODO(用一句话描述该文件做什么)   
 * @author: 包濬滔     
 * @date:   2018年4月10日 下午11:23:11   
 * @version V1.0 
 * @Copyright: 2018 vito Inc. All rights reserved. 
 */ 
package com.vito.ssm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vito.ssm.bean.Role;
import com.vito.ssm.dao.RoleMapper;

/**   
 * @ClassName:  RoleService   
 * @Description:TODO(这里用一句话描述这个类的作用)   
 * @author: 包濬滔 
 * @date:   2018年4月10日 下午11:23:11     
 * @Copyright: 2018 vito Inc. All rights reserved. 
 * 
 */
@Service
public class RoleService {
	@Autowired
	private RoleMapper roleMapper;
	
	/**
	 * 
	 * @Title: selectById   
	 * @Description: TODO(查询角色权限)   
	 * @param: @param roleId
	 * @param: @return      
	 * @return: Role      
	 * @throws
	 */
	public Role selectById(Integer roleId) {
		return roleMapper.selectByPrimaryKey(roleId);
	}

}
