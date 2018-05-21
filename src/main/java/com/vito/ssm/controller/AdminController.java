/**  
 * All rights Reserved, Designed By vito
 * @Title:  AdminController.java   
 * @Package com.vito.ssm.controller   
 * @Description:    TODO(用一句话描述该文件做什么)   
 * @author: 包濬滔     
 * @date:   2018年4月11日 下午11:06:41   
 * @version V1.0 
 * @Copyright: 2018 vito Inc. All rights reserved. 
 */ 
package com.vito.ssm.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.vito.ssm.bean.Classes;
import com.vito.ssm.bean.Course;
import com.vito.ssm.bean.Department;
import com.vito.ssm.bean.Msg;
import com.vito.ssm.bean.Role;
import com.vito.ssm.bean.Student;
import com.vito.ssm.bean.StudentExample;
import com.vito.ssm.bean.Teacher;
import com.vito.ssm.bean.User;
import com.vito.ssm.service.AdminService;
import com.vito.ssm.service.StudentService;

/**   
 * @ClassName:  AdminController   
 * @Description:TODO(管理员操作请求)   
 * @author: 包濬滔 
 * @date:   2018年4月11日 下午11:06:41     
 * @Copyright: 2018 vito Inc. All rights reserved. 
 * 
 */
@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;
	//进入课程管理页面
	@RequestMapping("/intoCourse")
	public String intoCourse() {
		return "admin/course";
	}
	
	//得到全部课程
	@RequestMapping("/getCourse")
	@ResponseBody
	public Msg getCourse(@RequestParam(value="pn",defaultValue="1")Integer pn) {
		PageHelper.startPage(pn, 10);
		List<Course> courses = adminService.getCourse();
		PageInfo page = new PageInfo(courses,5);
		return Msg.success().add("pageInfo", page);
	}
	
	//查询全部院系信息
	@ResponseBody
	@RequestMapping("/depts")
	public Msg getDept() {
		List<Department> dept = adminService.getDept();
		return Msg.success().add("dept", dept);
	}
	
	//根据院系ID查询老师信息
	@RequestMapping("/getTeaById/{deptId}")
	@ResponseBody
	public Msg getTeacher(@PathVariable("deptId")Integer deptId) {
		List<Teacher> teacher = adminService.getTeacher(deptId);
		return Msg.success().add("teacher", teacher);
	}
	//根据ID查询老师全部信息含院系
	@RequestMapping("/selectTeaByteaId/{teaId}")
	@ResponseBody
	public Msg selectTeaByteaId(@PathVariable("teaId")Integer teaId) {
		Teacher teacher = adminService.selectTeaByteaId(teaId);
		return Msg.success().add("teacher", teacher);
	}
	
	//保存新增课程信息
	@RequestMapping(value="/saveCourse",method=RequestMethod.POST)
	@ResponseBody
	public Msg insertCourse(@Valid Course course) {
		adminService.insertCourse(course);
		return Msg.success();
	}
	
	//按照ID查询课程信息
	@RequestMapping("/getCourseBycouId/{couId}")
	@ResponseBody
	public Msg getCourseBycouId(@PathVariable("couId")Integer couId) {
		Course course = adminService.getCourseBycouId(couId);
		return Msg.success().add("course", course);
	}
	
	//按照ID查询课程信息包括院系
	@RequestMapping("/selectCourseByCouId/{couId}")
	@ResponseBody
	public Msg selectCourseByCouId(@PathVariable("couId")Integer couId) {
		Course course = adminService.selectCourseByCouId(couId);
		return Msg.success().add("course", course);
	}
	
	//按照课程编号保存课程
	@RequestMapping(value = "/saveCourse/{couId}", method = RequestMethod.PUT)
	@ResponseBody
	public Msg saveCourseByCouId(Course course) {
		adminService.saveCourseById(course);
		return Msg.success().add("cou", course);
	}
	
	//按照ID删除课程
	@ResponseBody
	@RequestMapping(value = "/deleteCourse/{couId}", method = RequestMethod.DELETE)
	public Msg deleteCourseBycouId(@PathVariable("couId")Integer couId) {
		adminService.deleteCourseBycouId(couId);
		return Msg.success();
	}
	
	//进入学生管理页面
	@RequestMapping("/intoStudent")
	public String intoStudent() {
		return "admin/student";
	}
	
	//获取全部学生
	@ResponseBody
	@RequestMapping("/getStudent")
	public Msg getStudent(@RequestParam(value="pn",defaultValue="1")Integer pn) {
		PageHelper.startPage(pn, 10);
		List<Student> students = adminService.getStudents();
		PageInfo page = new PageInfo(students,5);
		return Msg.success().add("pageInfo", page);
	}
	
	//按照院系ID查询班级
	@RequestMapping("/getClassById/{deptId}")
	@ResponseBody
	public Msg getClasses(@PathVariable("deptId")Integer deptId) {
		List<Classes> classes = adminService.getClasses(deptId);
		return Msg.success().add("classes", classes);
	}
	
	//保存新增学生信息
	@RequestMapping(value="/saveStudent",method=RequestMethod.POST)
	@ResponseBody
	public Msg insertStudent(@Valid Student student) {
		adminService.insertStudent(student);
		return Msg.success();
	}
	
	//按照ID保存修改的学生
	@RequestMapping(value="/saveStudentBystuId/{stuId}"
			,method=RequestMethod.PUT)
	@ResponseBody
	public Msg saveStudentById(Student student) {
		adminService.saveStudentById(student);
		return Msg.success().add("stu", student);
	}
	
	//按照学号ID查询学生
	@RequestMapping("/getStuBystuId/{stuId}")
	@ResponseBody
	public Msg getStudentBystuId(@PathVariable("stuId")Integer stuId) {
		Student student = adminService.getStudentBystuId(stuId);
		return Msg.success().add("student", student);
	}
	//校验学号
//	@RequestMapping("/checkBystuId")
//	@ResponseBody
//	public Msg checkBystuId(@RequestParam("stuId")Integer stuId) {
//		boolean b = AdminService.checkBystuId(stuId);
//		if (b) {
//			return Msg.success();
//		}else {
//			return Msg.fail();
//		}
//	}
	//按照学生ID查询学生信息包括院系selectStuBystuId
	@RequestMapping("/selectStuBystuId/{stuId}")
	@ResponseBody
	public Msg selectStuBystuId(@PathVariable("stuId")Integer stuId) {
		Student student = adminService.selectStuBystuId(stuId);
		return Msg.success().add("student", student);
	}
	
	//按照ID删除学生
	@ResponseBody
	@RequestMapping(value = "/deleteStudent/{stuId}", 
	method = RequestMethod.DELETE)
	public Msg deleteStudentBystuId(@PathVariable("stuId")Integer stuId) {
		adminService.deleteStudentBystuId(stuId);
		return Msg.success();
	}
	
	//进入教师管理页面
	@RequestMapping("/intoTeacher")
	public String intoTeacher() {
		return "admin/teacher";
	}

	//查询全部教师
	@ResponseBody
	@RequestMapping("/getTeacher")
	public Msg getTeachers(@RequestParam(value="pn",defaultValue="1")Integer pn) {
		PageHelper.startPage(pn, 10);
		List<Teacher> teachers = adminService.getTeachers();
		PageInfo page = new PageInfo(teachers,5);
		return Msg.success().add("pageInfo", page);
	}
	
	//保存新增教师
	@RequestMapping(value="/saveTeacher",method=RequestMethod.POST)
	@ResponseBody
	public Msg insertTeacher(@Valid Teacher teacher) {
		adminService.insertTeacher(teacher);
		return Msg.success();
	}
	
	//按照学号ID查询教师
	@RequestMapping("/getTeaByteaId/{teaId}")
	@ResponseBody
	public Msg getTeacherBystuId(@PathVariable("teaId")Integer teaId) {
		Teacher teacher = adminService.getTeacherByteaId(teaId);
		return Msg.success().add("teacher", teacher);
	}
	
	//按照ID保存修改的教师
	@RequestMapping(value="/saveTeacherByteaId/{teaId}",method=RequestMethod.PUT)
	@ResponseBody
	public Msg saveTeacherById(Teacher teacher) {
		adminService.saveTeacherById(teacher);
		return Msg.success().add("tea", teacher);
	}
	
	//按照ID删除教师
	@ResponseBody
	@RequestMapping(value = "/deleteTeacher/{teaId}", method = RequestMethod.DELETE)
	public Msg deleteTeacherByteaId(@PathVariable("teaId")Integer teaId) {
		adminService.deleteTeacherByteaId(teaId);
		return Msg.success();
	}

	//进入院系管理页面
	@RequestMapping("/intoDepartment")
	public String intoDept() {
		return "admin/department";
	}
	
	//查询所有院系
	@RequestMapping("/getDepartment")
	@ResponseBody
	public Msg getDepartment(@RequestParam(value="pn",defaultValue="1")Integer pn) {
		PageHelper.startPage(pn, 10);
		List<Department> departments = adminService.getDept();
		PageInfo page = new PageInfo(departments,5);
		return Msg.success().add("pageInfo", page);
	}
	
	//保存新增院系
	@RequestMapping(value="/saveDepartment",method=RequestMethod.POST)
	@ResponseBody
	public Msg insertTeacher(@Valid Department department) {
		adminService.insertDepartment(department);
		return Msg.success();
	}
	
	//按照ID查询院系信息
	@RequestMapping("/getDeptBydeptId/{deptId}")
	@ResponseBody
	public Msg getDeptBydeptId(@PathVariable("deptId")Integer deptId) {
		Department department = adminService.getDeptById(deptId);
		return Msg.success().add("department", department);
	}
	
	//修改院系信息
	@RequestMapping(value="/saveDepartmentBydeptId/{deptId}",method=RequestMethod.PUT)
	@ResponseBody
	public Msg saveDepartmentById(Department department) {
		adminService.saveDepartmentBydeptId(department);
		return Msg.success().add("dept", department);
	}
	
	//按照ID删除院系
	@ResponseBody
	@RequestMapping(value = "/deleteDepartment/{deptId}", method = RequestMethod.DELETE)
	public Msg deleteDepartmentBydeptId(@PathVariable("deptId")Integer deptId) {
		adminService.deleteDepartment(deptId);
		return Msg.success();
	}
	//进入班级管理页面
	@RequestMapping("/intoClasses")
	public String intoClasses() {
		return "admin/classes";
	}
	
	//查询所有班级
	@RequestMapping("/getClass")
	@ResponseBody
	public Msg getClass(@RequestParam(value="pn",defaultValue="1")Integer pn) {
		PageHelper.startPage(pn, 10);
		List<Classes> classes = adminService.getClasses();
		PageInfo page = new PageInfo(classes,5);
		return Msg.success().add("pageInfo", page);
	}
	
	//新增班级
	@RequestMapping(value="/saveClass",method=RequestMethod.POST)
	@ResponseBody
	public Msg insertClasses(@Valid Classes classes) {
		adminService.insertClasses(classes);
		return Msg.success();
	}
	
	//按照ID查询班级信息
	@RequestMapping("/getClassByclassId/{classId}")
	@ResponseBody
	public Msg getClassByclassId(@PathVariable("classId")Integer classId) {
		Classes classes = adminService.getClassById(classId);
		return Msg.success().add("classes2", classes);
	}
	
	//修改班级信息
	@RequestMapping(value="/saveClassByclassId/{classId}",method=RequestMethod.PUT)
	@ResponseBody
	public Msg saveDepartmentById(Classes classes) {
		adminService.saveClassesById(classes);
		return Msg.success().add("classes1", classes);
	}
	
	//按照ID删除班级
	@ResponseBody
	@RequestMapping(value = "/deleteClass/{classId}", method = RequestMethod.DELETE)
	public Msg deleteClass(@PathVariable("classId")Integer classId) {
		adminService.deleteClasses(classId);
		return Msg.success();
	}
	
	//进入用户管理页面
	@RequestMapping("/intoUser")
	public String intoUser() {
		return "admin/user";
	}
	
	//获取全部用户权限信息
	@RequestMapping("/roles")
	@ResponseBody
	public Msg getRoles() {
		List<Role> roles = adminService.getRole();
		return Msg.success().add("roles", roles);
	}
	
	//获取全部用户
	@RequestMapping("/getUser")
	@ResponseBody
	public Msg getUser(@RequestParam(value="pn",defaultValue="1")Integer pn) {
		PageHelper.startPage(pn, 10);
		List<User> users = adminService.getUsers();
		PageInfo page = new PageInfo(users,5);
		return Msg.success().add("pageInfo", page);
	}
	//保存新增用户
	@RequestMapping(value="/saveUser",method=RequestMethod.POST)
	@ResponseBody
	public Msg insertUser(@Valid User user) {
		adminService.insertUser(user);
		return Msg.success();
	}
	//保存修改用户
	@RequestMapping(value="/saveUserById/{uId}",method=RequestMethod.PUT)
	@ResponseBody
	public Msg saveUserById(User user) {
		adminService.updateUserById(user);
		return Msg.success().add("users", user);
	}
	//按照ID查询用户
	@RequestMapping("/getUserById/{uId}")
	@ResponseBody
	public Msg getUserById(@PathVariable("uId")Integer uId) {
		User user = adminService.getUserById(uId);
		return Msg.success().add("user", user);
	}
	//删除用户
	@ResponseBody
	@RequestMapping(value = "/deleteUser/{uId}", method = RequestMethod.DELETE)
	public Msg deleteUser(@PathVariable("uId")Integer uId) {
		adminService.deleteUser(uId);
		return Msg.success();
	}
}
