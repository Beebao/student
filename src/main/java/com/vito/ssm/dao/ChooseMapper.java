package com.vito.ssm.dao;

import com.vito.ssm.bean.Choose;
import com.vito.ssm.bean.ChooseExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ChooseMapper {
    long countByExample(ChooseExample example);

    int deleteByExample(ChooseExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Choose record);

    int insertSelective(Choose record);

    List<Choose> selectByExample(ChooseExample example);
    
    List<Choose> selectByChooseStu(Integer chooseStu);

    Choose selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Choose record, @Param("example") ChooseExample example);

    int updateByExample(@Param("record") Choose record, @Param("example") ChooseExample example);

    int updateByPrimaryKeySelective(Choose record);

    int updateByPrimaryKey(Choose record);
}