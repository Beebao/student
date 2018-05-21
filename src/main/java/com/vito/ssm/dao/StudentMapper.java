package com.vito.ssm.dao;

import com.vito.ssm.bean.Student;
import com.vito.ssm.bean.StudentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface StudentMapper {
    long countByExample(StudentExample example);

    int deleteByExample(StudentExample example);

    int deleteByPrimaryKey(Integer stuId);

    int insert(Student record);

    int insertSelective(Student record);

    List<Student> selectByExample(StudentExample example);

    Student selectByPrimaryKey(Integer stuId);
    
    List<Student> selectByExampleWithFK(StudentExample example);

    Student selectByPrimaryKeyWithFK(Integer stuId);
    
    //按照用户名查询学生信息
    Student selectStudentByUsername(Integer username);

    int updateByExampleSelective(@Param("record") Student record, @Param("example") StudentExample example);

    int updateByExample(@Param("record") Student record, @Param("example") StudentExample example);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);
}