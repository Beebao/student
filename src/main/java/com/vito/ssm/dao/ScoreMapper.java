package com.vito.ssm.dao;

import com.vito.ssm.bean.Score;
import com.vito.ssm.bean.ScoreExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ScoreMapper {
    long countByExample(ScoreExample example);

    int deleteByExample(ScoreExample example);

    int deleteByPrimaryKey(Integer scoreId);

    int insert(Score record);

    int insertSelective(Score record);

    List<Score> selectByExample(ScoreExample example);
    
    //按照学生ID查询学生成绩
    List<Score> selectBystuId(Integer scoreStu);
    //按照教师ID查询自己课程的学生成绩
    List<Score> selectByteaId(Integer scoreTea);
    
    int updateByStuAndCou(@Param("scoreStu")Integer scoreStu,@Param("scoreCou")Integer scoreCou,@Param("scoreValue")Integer scoreValue);
    
    Score selectBystuIdAndCouId(@Param("scoreStu")Integer scoreStu,@Param("scoreCou")Integer scoreCou);

    Score selectByPrimaryKey(Integer scoreId);

    int updateByExampleSelective(@Param("record") Score record, @Param("example") ScoreExample example);

    int updateByExample(@Param("record") Score record, @Param("example") ScoreExample example);

    int updateByPrimaryKeySelective(Score record);

    int updateByPrimaryKey(Score record);
}