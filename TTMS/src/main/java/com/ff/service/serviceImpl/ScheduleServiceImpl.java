package com.ff.service.serviceImpl;


import com.ff.dao.ScheduleMapper;
import com.ff.entity.Schedule;
import com.ff.service.ScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
@Service
public class ScheduleServiceImpl implements ScheduleService {

    @Autowired
    ScheduleMapper scheduleMapper;

    @Override
    public List<Date> dateByPlayId(Integer play_id) {
        return scheduleMapper.dateByPlayId(play_id);
    }

    @Override
    public List<Schedule> schByDateAndPId(Integer play_id, String date) {
        return scheduleMapper.schByDateAndPId(play_id,date);
    }

    @Override
    public Schedule selectScheById(Integer schedule_id) {
        return scheduleMapper.selectScheById(schedule_id);
    }
}
