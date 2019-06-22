package com.ff.service.serviceImpl;

import com.ff.dao.SeatMapper;
import com.ff.entity.Seat;
import com.ff.service.SeatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SeatServiceImpl implements SeatService {


    @Autowired
    SeatMapper seatMapper;
    @Override
    public Integer selectIdByrcs(Integer row, Integer col, Integer studio_id) {
        return seatMapper.selectIdByrcs(row,col,studio_id);
    }

    @Override
    public Seat allHasBuy(Integer ticket_id,Integer schedule_id) {
        return seatMapper.allHasBuy(ticket_id,schedule_id);
    }

    @Override
    public Integer selectSeatIdByTiId(Integer ticket_id) {
        return seatMapper.selectSeatIdByTiId(ticket_id);
    }
}
