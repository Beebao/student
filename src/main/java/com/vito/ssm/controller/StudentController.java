/**  
 * All rights Reserved, Designed By vito
 * @Title:  StudentController.java   
 * @Package com.vito.ssm.controller   
 * @Description:    TODO(用一句话描述该文件做什么)   
 * @author: 包濬滔     
 * @date:   2018年4月11日 下午11:07:07   
 * @version V1.0 
 * @Copyright: 2018 vito Inc. All rights reserved. 
 */ 
package com.vito.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.vito.ssm.bean.Choose;
import com.vito.ssm.bean.Course;
import com.vito.ssm.bean.Msg;
import com.vito.ssm.bean.Score;
import com.vito.ssm.bean.Student;
import com.vito.ssm.service.StudentService;

/**   
 * @ClassName:  StudentController   
 * @Description:TODO(学生操作请求)   
 * @author: 包濬滔 
 * @date:   2018年4月11日 下午11:07:07     
 * @Copyright: 2018 vito Inc. All rights reserved. 
 * 
 */
@Controller
public class StudentController {
	@Autowired
	private StudentService studentService;
	
	@RequestMapping("/stuInfo")
	public String intoStudent() {
		return "student/info";
	}
	//个人信息查询
	@RequestMapping("/getStudent/{stuId}")
	@ResponseBody
	public Msg selectStudentById(@PathVariable("stuId")Integer stuId) {
		Student student = studentService.selectStudentById(stuId);
		return Msg.success().add("student", student);		
	}
	
	@RequestMapping("/scoreInfo")
	public String intoScore() {
		return "student/score";
	}
	//按照ID查询成绩
	@RequestMapping("/getScore/{scoreStu}")
	@ResponseBody
	public Msg selectScoreById(@PathVariable("scoreStu")Integer scoreStu) {
		List<Score> scores = studentService.selectScoreByStuId(scoreStu);
		return Msg.success().add("score", scores);
	}
	
	//进入课表查询页面
	@RequestMapping("/selectCurriculum")
	public String selectCourse() {
		return "student/curriculum";
	}
	//进入选课页面
	@RequestMapping("/chooseCourse")
	public String chooseCourse() {
		return "student/choose";
	}
	
	//查询全部课程
	@RequestMapping("/getAllCourse")
	@ResponseBody
	public Msg selectAllCourse() {
		List<Course> course = studentService.selectCourse();
		return Msg.success().add("course", course);
	}
	
	//将选择的课程加入数据库中
	@RequestMapping("/choose")
	@ResponseBody
	public Msg insertChoose(@RequestParam("couId")Integer couId,
			@RequestParam("stuId")Integer stuId) {
		Choose choose = new Choose(null, stuId, couId);
		studentService.insertChoose(choose);
		return Msg.success().add("code", 100);
	}
	
	@RequestMapping("/curriculum/{chooseStu}")
	@ResponseBody
	public Msg selectCurriculum(@PathVariable("chooseStu")Integer chooseStu) {
		List<Choose> curriculum = studentService.selectCurriculum(chooseStu);
		return Msg.success().add("curriculum", curriculum);
	}
	
	//取消选课
	@RequestMapping("/cancleChoose/{id}")
	@ResponseBody
	public Msg cancleChoose(@PathVariable("id")Integer id) {
		studentService.cancleChoose(id);
		return Msg.success().add("code", 100);
	}

}
