package com.ff.service;

import com.ff.entity.Seat;


public interface SeatService {

    Integer selectIdByrcs(Integer row,Integer col,Integer studio_id);

    Seat allHasBuy(Integer ticket_id,Integer schedule_id);

    Integer selectSeatIdByTiId(Integer ticket_id);
}
