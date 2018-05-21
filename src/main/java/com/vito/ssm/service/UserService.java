/**  
 * All rights Reserved, Designed By www.tydic.com
 * @Title:  UserService.java   
 * @Package com.vito.ssm.service   
 * @Description:    TODO(用一句话描述该文件做什么)   
 * @author: 包濬滔     
 * @date:   2018年4月10日 下午11:17:25   
 * @version V1.0 
 * @Copyright: 2018 www.tydic.com Inc. All rights reserved. 
 */ 
package com.vito.ssm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vito.ssm.bean.User;
import com.vito.ssm.dao.UserMapper;

/**   
 * @ClassName:  UserService   
 * @Description:TODO(这里用一句话描述这个类的作用)   
 * @author: 包濬滔 
 * @date:   2018年4月10日 下午11:17:25     
 * @Copyright: 2018 www.tydic.com Inc. All rights reserved. 
 * 
 */
@Service
public class UserService {
	
	@Autowired
	private UserMapper userMapper;
	
	/**
	 * 
	 * @Title: selectByUsername   
	 * @Description: TODO(用户登录查询)   
	 * @param: @param username
	 * @param: @return      
	 * @return: User      
	 * @throws
	 */
	public User selectByUsername(String username) {
		return userMapper.selectByUsername(username);
	}

}
