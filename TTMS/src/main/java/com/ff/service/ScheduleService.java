package com.ff.service;

import com.ff.entity.Schedule;

import java.util.Date;
import java.util.List;

public interface ScheduleService {
    List<Date> dateByPlayId(Integer play_id);


    List<Schedule> schByDateAndPId(Integer play_id,String date);


    Schedule selectScheById(Integer schedule_id);
}
