package com.vito.ssm.dao;

import com.vito.ssm.bean.Classes;
import com.vito.ssm.bean.ClassesExample;
import com.vito.ssm.bean.Teacher;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ClassesMapper {
    long countByExample(ClassesExample example);

    int deleteByExample(ClassesExample example);

    int deleteByPrimaryKey(Integer classId);

    int insert(Classes record);

    int insertSelective(Classes record);

    List<Classes> selectByExample(ClassesExample example);
    
    List<Classes> selectByExampleWithFK(ClassesExample example);
    
    List<Classes> selectByDeptId(Integer deptId);

    Classes selectByPrimaryKey(Integer classId);

    int updateByExampleSelective(@Param("record") Classes record, @Param("example") ClassesExample example);

    int updateByExample(@Param("record") Classes record, @Param("example") ClassesExample example);

    int updateByPrimaryKeySelective(Classes record);

    int updateByPrimaryKey(Classes record);
}