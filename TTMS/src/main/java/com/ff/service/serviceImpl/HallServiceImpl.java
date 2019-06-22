package com.ff.service.serviceImpl;

import com.ff.dao.HallMapper;
import com.ff.entity.Studio;
import com.ff.service.HallService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service

public class HallServiceImpl implements HallService {
    @Autowired
    HallMapper hallMapper;

    @Override
    public Studio selectHallById(Integer studio_id) {
        return hallMapper.selectHallById(studio_id);
    }
}
