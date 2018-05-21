/**  
 * All rights Reserved, Designed By vito
 * @Title:  UserController.java   
 * @Package com.vito.ssm.controller   
 * @Description:    TODO(用一句话描述该文件做什么)   
 * @author: 包濬滔     
 * @date:   2018年4月10日 下午11:17:15   
 * @version V1.0 
 * @Copyright: 2018 vito. All rights reserved. 
 */ 
package com.vito.ssm.controller;

import java.util.Map;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.vito.ssm.service.UserService;

/**   
 * @ClassName:  UserController   
 * @Description:TODO(这里用一句话描述这个类的作用)   
 * @author: 包濬滔 
 * @date:   2018年4月10日 下午11:17:15     
 * @Copyright: 2018 www.tydic.com Inc. All rights reserved. 
 * 
 */
@SessionAttributes({"user"})
@Controller
public class UserController {
	
	@Autowired 
	private UserService userService;
	@RequestMapping(value="login",method = RequestMethod.POST)
	public String login(@RequestParam("username")String username,@RequestParam("password")String password,
			Map<String, Object> map) {
		UsernamePasswordToken token = new UsernamePasswordToken(username, password);
		Subject subject = SecurityUtils.getSubject();
		map.put("user", token.getUsername());
		subject.login(token);
		if (subject.hasRole("admin")) {
			return "admin/index";
		}else if (subject.hasRole("teacher")) {
            return "teacher/index";
        }else if (subject.hasRole("student")) {
            return "student/index";
        }
		return "longin";
	}

}
