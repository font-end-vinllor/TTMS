package com.ff.dao;

import com.ff.entity.Studio;
import org.apache.ibatis.annotations.Param;

public interface HallMapper {
//    根据studio_id 获取演出厅

    Studio selectHallById(@Param("studio_id") Integer studio_id);

}
