package com.vito.ssm.dao;

import com.vito.ssm.bean.Teacher;
import com.vito.ssm.bean.TeacherExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TeacherMapper {
    long countByExample(TeacherExample example);

    int deleteByExample(TeacherExample example);

    int deleteByPrimaryKey(Integer teaId);

    int insert(Teacher record);

    int insertSelective(Teacher record);

    List<Teacher> selectByExample(TeacherExample example);
    
    List<Teacher> selectByExampleWithFK(TeacherExample example);

    Teacher selectByPrimaryKey(Integer teaId);
    
    Teacher selectByPrimaryKeyWithFK(Integer teaId);
    
    List<Teacher> selectByDeptId(Integer deptId);

    int updateByExampleSelective(@Param("record") Teacher record, @Param("example") TeacherExample example);

    int updateByExample(@Param("record") Teacher record, @Param("example") TeacherExample example);

    int updateByPrimaryKeySelective(Teacher record);

    int updateByPrimaryKey(Teacher record);
}