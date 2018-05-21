/**  
 * All rights Reserved, Designed By vito
 * @Title:  Msg.java   
 * @Package com.vito.ssm.bean   
 * @Description:    TODO(用一句话描述该文件做什么)   
 * @author: 包濬滔     
 * @date:   2018年4月11日 下午10:40:53   
 * @version V1.0 
 * @Copyright: 2018 vito Inc. All rights reserved. 
 */ 
package com.vito.ssm.bean;

import java.util.HashMap;
import java.util.Map;

/**   
 * @ClassName:  Msg   
 * @Description:TODO(一个AJAX通用的信息返回接收)   
 * @author: 包濬滔 
 * @date:   2018年4月11日 下午10:40:53     
 * @Copyright: 2018 vito Inc. All rights reserved. 
 * 
 */
public class Msg {
	//状态码100表示成功，404表示错误
	private Integer code;
	//提示信息
	private String msg;
	//自定义添加数据
	private Map<String, Object> extend = new HashMap<>();
	//处理成功
	public static Msg success() {
		Msg result = new Msg();
		result.setCode(100);
		result.setMsg("处理成功");
		return result;
	}
	//处理失败
	public static Msg fail() {
		Msg result = new Msg();
		result.setCode(404);
		result.setMsg("处理失败");
		return result;
	}
	//自定义添加数据
	public Msg add(String key,Object value) {
		this.getExtend().put(key, value);
		return this;
	}
	public Integer getCode() {
		return code;
	}
	public void setCode(Integer code) {
		this.code = code;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Map<String, Object> getExtend() {
		return extend;
	}
	public void setExtend(Map<String, Object> extend) {
		this.extend = extend;
	}
	
	

}
