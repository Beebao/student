package com.vito.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vito.ssm.bean.Choose;
import com.vito.ssm.bean.Course;
import com.vito.ssm.bean.Score;
import com.vito.ssm.bean.Student;
import com.vito.ssm.dao.ChooseMapper;
import com.vito.ssm.dao.CourseMapper;
import com.vito.ssm.dao.ScoreMapper;
import com.vito.ssm.dao.StudentMapper;

/**   
 * @ClassName:  StudentService   
 * @Description:TODO(这里用一句话描述这个类的作用)   
 * @author:  Corleone 
 * @date:   2018年5月3日 上午10:44:04     
 * @Copyright: 2018 vito Inc. All rights reserved. 
 * 
 */
@Service
public class StudentService {
	@Autowired
	private StudentMapper studentMapper;
	@Autowired
	private ScoreMapper scoreMapper;
	@Autowired
	private ChooseMapper chooseMapper;
	
	@Autowired
	private CourseMapper courseMapper;
	
	//按照ID查询学生
	public Student selectStudentById(Integer stuId) {
		return studentMapper.selectByPrimaryKeyWithFK(stuId);
	}
	//按照ID查询学生成绩
	
	public List<Score> selectScoreByStuId(Integer scoreStu) {
		return scoreMapper.selectBystuId(scoreStu);
	}
	
	//查询全部课程
	public List<Course> selectCourse(){
		return courseMapper.selectByExampleWithFK(null);
	}
	
	//保存选择的课程
	public void insertChoose(Choose choose) {
		chooseMapper.insertSelective(choose);
	}
	//查询课表
	public List<Choose> selectCurriculum(Integer chooseStu) {
		return chooseMapper.selectByChooseStu(chooseStu);
	}

	/**   
	 * @Title: cancleChoose   
	 * @Description: TODO(这里用一句话描述这个方法的作用)   
	 * @param: @param id      
	 * @return: void      
	 */
	public void cancleChoose(Integer id) {
		chooseMapper.deleteByPrimaryKey(id);		
	}

}
