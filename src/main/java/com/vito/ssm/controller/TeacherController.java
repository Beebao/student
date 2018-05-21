/**  
 * All rights Reserved, Designed By vito
 * @Title:  TeacherController.java   
 * @Package com.vito.ssm.controller   
 * @Description:    TODO(用一句话描述该文件做什么)   
 * @author: 包濬滔     
 * @date:   2018年4月11日 下午11:07:41   
 * @version V1.0 
 * @Copyright: 2018 vito Inc. All rights reserved. 
 */ 
package com.vito.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.vito.ssm.bean.Course;
import com.vito.ssm.bean.Msg;
import com.vito.ssm.bean.Score;
import com.vito.ssm.bean.Student;
import com.vito.ssm.bean.Teacher;
import com.vito.ssm.service.TeacherService;

/**   
 * @ClassName:  TeacherController   
 * @Description:TODO(教师操作请求)   
 * @author: 包濬滔 
 * @date:   2018年4月11日 下午11:07:41     
 * @Copyright: 2018 vito Inc. All rights reserved. 
 * 
 */
@Controller
public class TeacherController {
	@Autowired
	private TeacherService teacherService;
	
	//去教师个人信息页面
	@RequestMapping("/intoInfo")
	public String intoInfo() {
		return "teacher/info";
	}
	//去教师课表查询页面
	@RequestMapping("/intoCurriculum")
	public String intoCurriculum() {
		return "teacher/curriculum";
	}
	//去教师成绩录入页面
	@RequestMapping("/intoScore")
	public String intoScore() {
		return "teacher/score";
	}
	
	//个人信息查询
	@RequestMapping("/getTeacher/{teaId}")
	@ResponseBody
	public Msg selectTeacherById(@PathVariable("teaId")Integer teaId) {
		Teacher teacher = teacherService.selectTeacherById(teaId);
		return Msg.success().add("teacher", teacher);		
	}
	
	//学生成绩录入
	@RequestMapping("/insertScore")
	@ResponseBody
	public Msg insertScore(@RequestParam("scoreTea")Integer scoreTea) {
		List<Score> score = teacherService.insertScore(scoreTea);
		return Msg.success().add("score", score);
	}
	//查询教师的某个学生的成绩
	@ResponseBody
	@RequestMapping("/selectScoreByStuIdTeaId")
	public Msg selectScoreByStuIdTeaId(@RequestParam("scoreStu")Integer scoreStu,
			@RequestParam("scoreCou")Integer scoreCou) {
		Score scoreById = teacherService.selectScoreByStuIdTeaId(scoreStu, scoreCou);
		return Msg.success().add("scoreById", scoreById);
	}
	
	//老师录入成绩
	@RequestMapping("/insertScoreByStu")
	@ResponseBody
	public Msg insertScoreByStu(@RequestParam("scoreStu")Integer scoreStu,
			@RequestParam("scoreCou")Integer scoreCou,@RequestParam("scoreValue")Integer scoreValue) {
		teacherService.updateByStuAndCou(scoreStu, scoreCou, scoreValue);
		return Msg.success();
	}
	
	//查询个人课表
	@RequestMapping("/selectCurriculum/{couTeacher}")
	@ResponseBody
	public Msg selectCurriculum(@PathVariable("couTeacher")Integer couTeacher) {
		List<Course> curriculum = teacherService.selectByteaID(couTeacher);
		return Msg.success().add("curriculum", curriculum);
	}

}
