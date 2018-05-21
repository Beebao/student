package com.vito.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vito.ssm.bean.Course;
import com.vito.ssm.bean.Score;
import com.vito.ssm.bean.Teacher;
import com.vito.ssm.dao.CourseMapper;
import com.vito.ssm.dao.ScoreMapper;
import com.vito.ssm.dao.TeacherMapper;

/**   
 * @ClassName:  TeacherService   
 * @Description:TODO(这里用一句话描述这个类的作用)   
 * @author:  Corleone 
 * @date:   2018年5月3日 下午3:14:44     
 * @Copyright: 2018 vito Inc. All rights reserved. 
 * 
 */
@Service
public class TeacherService {
	
	@Autowired
	private TeacherMapper teacherMapper;
	@Autowired
	private ScoreMapper scoreMapper;
	@Autowired
	private CourseMapper courseMapper;
	
	//按照ID查询教师
	public Teacher selectTeacherById(Integer teaId) {
		return teacherMapper.selectByPrimaryKeyWithFK(teaId);
	}
	//学生成绩录入
	public List<Score> insertScore(Integer scoreTea) {
		return scoreMapper.selectByteaId(scoreTea);
	}
	//按照课程和学生查询老师的某一个学生信息	
	public Score selectScoreByStuIdTeaId(Integer scoreStu,Integer scoreCou) {
		return scoreMapper.selectBystuIdAndCouId(scoreStu, scoreCou);
	}
	
	//成绩录入
	public void updateByStuAndCou(Integer scoreStu,Integer scoreCou,Integer scoreValue) {
		scoreMapper.updateByStuAndCou(scoreStu, scoreCou, scoreValue);
	}
	
	//课表查询
	public List<Course> selectByteaID(Integer couTeacher) {
		return courseMapper.selectByTeaId(couTeacher);
	}

}
