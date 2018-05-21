package com.vito.ssm.dao;

import com.vito.ssm.bean.Course;
import com.vito.ssm.bean.CourseExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CourseMapper {
    long countByExample(CourseExample example);

    int deleteByExample(CourseExample example);

    int deleteByPrimaryKey(Integer couId);

    int insert(Course record);

    int insertSelective(Course record);
    //查询教师个人课表
    List<Course> selectByTeaId(Integer couTeacher);

    List<Course> selectByExample(CourseExample example);

    Course selectByPrimaryKey(Integer couId);
    
    List<Course> selectByExampleWithFK(CourseExample example);

    Course selectByPrimaryKeyWithFK(Integer couId);

    int updateByExampleSelective(@Param("record") Course record, @Param("example") CourseExample example);

    int updateByExample(@Param("record") Course record, @Param("example") CourseExample example);

    int updateByPrimaryKeySelective(Course record);

    int updateByPrimaryKey(Course record);
}