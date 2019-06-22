package com.ff.dao;

import com.ff.entity.Play;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface PlayMapper {
//  根据电影状态查询所有剧目
      List<Play> allPlaying(@Param("status") Integer status);

//    查询电影所有种类

    List<String> allType();

//    根据电影类型和电影状态查询所有
    List<Play> allTypePlays(@Param("status") Integer status,@Param("type") String type);

//   根据电影名称查询电影详情
    Play playInfoById(@Param("play_id") Integer play_id);


}
