package com.ff.dao;

import com.ff.entity.Play;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SearchMapper {

//    根据字符串查询所有可能的剧目
//    包含关键字即可

    List<Play> searchPlay(@Param("key") String key);
}
