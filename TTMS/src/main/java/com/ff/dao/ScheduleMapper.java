package com.ff.dao;

import com.ff.entity.Schedule;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface ScheduleMapper {

//    根据剧目和日期查询演出计划
    List<Schedule> schByDateAndPId(@Param("play_id") Integer play_id,@Param("date") String date);

//    获取某个剧目所有的演出日期
    List<Date> dateByPlayId(@Param("play_id") Integer play_id);

    Schedule selectScheById(@Param("schedule_id") Integer schedule_id);
}
