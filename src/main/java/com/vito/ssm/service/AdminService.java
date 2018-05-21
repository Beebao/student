package com.vito.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vito.ssm.bean.Classes;
import com.vito.ssm.bean.Course;
import com.vito.ssm.bean.Department;
import com.vito.ssm.bean.Role;
import com.vito.ssm.bean.Student;
import com.vito.ssm.bean.StudentExample;
import com.vito.ssm.bean.StudentExample.Criteria;
import com.vito.ssm.bean.Teacher;
import com.vito.ssm.bean.User;
import com.vito.ssm.dao.ClassesMapper;
import com.vito.ssm.dao.CourseMapper;
import com.vito.ssm.dao.DepartmentMapper;
import com.vito.ssm.dao.RoleMapper;
import com.vito.ssm.dao.StudentMapper;
import com.vito.ssm.dao.TeacherMapper;
import com.vito.ssm.dao.UserMapper;

/**   
 * @ClassName:  AdminService   
 * @Description:TODO(这里用一句话描述这个类的作用)   
 * @author:  Corleone 
 * @date:   Apr 23, 2018 2:15:16 PM     
 * @Copyright: 2018 vito Inc. All rights reserved. 
 * 
 */
@Service
public class AdminService {
	@Autowired
	private CourseMapper courseMapper;
	
	@Autowired
	private DepartmentMapper departmentMapper;
	
	@Autowired 
	private TeacherMapper teacherMapper;
	
	@Autowired
	private StudentMapper studentMapper;
	
	@Autowired
	private ClassesMapper classesMapper;
	
	@Autowired
	private UserMapper userMapper;
	
	@Autowired RoleMapper roleMapper;
	
	//校验学号
	
	
	//获取课程信息
	public List<Course> getCourse() {
		List<Course> list = courseMapper.selectByExampleWithFK(null);
		return list;
	}
	
	//获取院系信息
	public List<Department> getDept() {
		return departmentMapper.selectByExample(null);
	}
	
	//根据院系ID查询老师信息
	public List<Teacher> getTeacher(Integer deptId) {
		return teacherMapper.selectByDeptId(deptId);
	}
	
	//保存新增课程信息	
	public void insertCourse(Course course) {
		courseMapper.insertSelective(course);
	}
	
	//按照ID查询课程信息
	public Course getCourseBycouId(Integer couId) {
		return courseMapper.selectByPrimaryKey(couId);
	}
	
	//按照ID查询课程信息包括院系
	public Course selectCourseByCouId(Integer couId) {
		return courseMapper.selectByPrimaryKeyWithFK(couId);
	}
	
	//按照课程编号保存
	public void saveCourseById(Course course) {
		courseMapper.updateByPrimaryKeySelective(course);
	}
	
	//按照ID删除课程
	public void deleteCourseBycouId(Integer couId) {
		courseMapper.deleteByPrimaryKey(couId);
	}
	
	//获取全部学生
	public List<Student> getStudents() {
		return studentMapper.selectByExampleWithFK(null);
	}
	
	//根据院系ID查询班级信息
	public List<Classes> getClasses(Integer deptId) {
		return classesMapper.selectByDeptId(deptId);
	}
	
	//保存新增学生信息	
	public void insertStudent(Student student) {
		studentMapper.insertSelective(student);
	}
	
	//按照学生ID查询学生
	public Student getStudentBystuId(Integer stuId) {
		return studentMapper.selectByPrimaryKey(stuId);
	}
	//按照学生ID查询学生
	public Student selectStuBystuId(Integer stuId) {
		return studentMapper.selectByPrimaryKeyWithFK(stuId);
	}
	
	//按照学生编号保存
	public void saveStudentById(Student student) {		
		studentMapper.updateByPrimaryKeySelective(student);
	}
	
	//按照ID删除学生
	public void deleteStudentBystuId(Integer stuId) {
		studentMapper.deleteByPrimaryKey(stuId);
	}
	
	//获取全部教师
	public List<Teacher> getTeachers() {
		return teacherMapper.selectByExampleWithFK(null);
	}
	
	//保存新增教师信息	
	public void insertTeacher(Teacher teacher) {
		teacherMapper.insertSelective(teacher);
	}
	
	//按照教师ID查询教师
	public Teacher getTeacherByteaId(Integer teaId) {
		return teacherMapper.selectByPrimaryKey(teaId);
	}
	//按照教师ID查询教师包括院系
	public Teacher selectTeaByteaId(Integer teaId) {
		return teacherMapper.selectByPrimaryKeyWithFK(teaId);
	}
	
	//按照教师编号保存
	public void saveTeacherById(Teacher teacher) {		
		teacherMapper.updateByPrimaryKeySelective(teacher);
	}
	
	//按照ID删除教师
	public void deleteTeacherByteaId(Integer teaId) {
		teacherMapper.deleteByPrimaryKey(teaId);
	}
	
	//保存新增院系
	public void insertDepartment(Department department) {
		departmentMapper.insertSelective(department);
	}
	
	//保存按ID修改的院系
	public void saveDepartmentBydeptId(Department department) {
		departmentMapper.updateByPrimaryKeySelective(department);
	}
	
	//按照ID查询院系信息
	public Department getDeptById(Integer deptId) {
		return departmentMapper.selectByPrimaryKey(deptId);
	}
	
	//删除院系
	public void deleteDepartment(Integer deptId) {
		departmentMapper.deleteByPrimaryKey(deptId);
	}
	
	//获取全部班级
	public List<Classes> getClasses() {
		return classesMapper.selectByExampleWithFK(null);
	}
	//新增班级
	public void insertClasses(Classes classes) {
		classesMapper.insertSelective(classes);
	}
	//按照修改班级并保存
	public void saveClassesById(Classes classes) {
		classesMapper.updateByPrimaryKeySelective(classes);
	}
	//删除班级
	public void deleteClasses(Integer classId) {
		classesMapper.deleteByPrimaryKey(classId);
	}
	
	//按照ID查询班级
	public Classes getClassById(Integer classId) {
		return classesMapper.selectByPrimaryKey(classId);
	}
	
	//获取全部用户
	public List<User> getUsers() {
		return userMapper.selectByExampleWithFK(null);
	}
	//保存新增用户
	public void insertUser(User user) {
		userMapper.insertSelective(user);
	}
	//保存修改用户
	public void updateUserById(User user) {
		userMapper.updateByPrimaryKeySelective(user);
	}
	//按照ID查询用户
	public User getUserById(Integer uId) {
		return userMapper.selectByPrimaryKey(uId);
	}
	//删除用户
	public void deleteUser(Integer uId) {
		userMapper.deleteByPrimaryKey(uId);
	}
	
	//查询全部角色权限信息
	public List<Role> getRole() {
		return roleMapper.selectByExample(null);
	}


	

}
