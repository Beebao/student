/**  
 * All rights Reserved, Designed By www.tydic.com
 * @Title:  LoginRealm.java   
 * @Package com.vito.ssm.realm   
 * @Description:    TODO(用一句话描述该文件做什么)   
 * @author: 包濬滔     
 * @date:   2018年4月10日 下午11:14:31   
 * @version V1.0 
 * @Copyright: 2018 www.tydic.com Inc. All rights reserved. 
 */ 
package com.vito.ssm.realm;

import java.util.HashSet;
import java.util.Set;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import com.vito.ssm.bean.Role;
import com.vito.ssm.bean.User;
import com.vito.ssm.service.RoleService;
import com.vito.ssm.service.UserService;

/**   
 * @ClassName:  LoginRealm   
 * @Description:TODO(这里用一句话描述这个类的作用)   
 * @author: 包濬滔 
 * @date:   2018年4月10日 下午11:14:31     
 * @Copyright: 2018 www.tydic.com Inc. All rights reserved. 
 * 
 */
public class LoginRealm extends AuthorizingRealm{

	@Autowired
	private UserService UserService;
	
	@Autowired
	private RoleService roleService;
	@Override
	public void setName(String name) {
		// TODO Auto-generated method stub
		super.setName("loginRealm");
	}
	/* (non-Javadoc)
	 * @see org.apache.shiro.realm.AuthorizingRealm#doGetAuthorizationInfo(org.apache.shiro.subject.PrincipalCollection)
	 * 授权
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		// TODO Auto-generated method stub
		String username = (String) getAvailablePrincipal(principals);
		Role role = null;
		try {
			User user = UserService.selectByUsername(username);
			role = roleService.selectById(user.getRole());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
		Set<String> r = new HashSet<>();
		if (role != null) {
			r.add(role.getRoleName());
			info.setRoles(r);
		}
		return info;
	}

	/* (non-Javadoc)
	 * @see org.apache.shiro.realm.AuthenticatingRealm#doGetAuthenticationInfo(org.apache.shiro.authc.AuthenticationToken)
	 * 认证
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		// TODO Auto-generated method stub
		String username = (String) token.getPrincipal();
		String password = new String((char[]) token.getCredentials());
		User user = null;
		try {
			user = UserService.selectByUsername(username);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}if (user == null) {
			throw new UnknownAccountException("没有该用户名");
		}else if (!password.equals(user.getPassword())) {
			//密码错误
            throw new IncorrectCredentialsException("密码错误");
		}
		SimpleAuthenticationInfo simpleAuthenticationInfo =
				new SimpleAuthenticationInfo(username, password, this.getName());
		return simpleAuthenticationInfo;
		
	}

}
