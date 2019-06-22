package com.ff.dao;

import com.ff.entity.Schedule;
import com.ff.entity.Seat;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SeatMapper {
//    根据座位的行号，列ｈａｏ，所在演出厅找id
    Integer selectIdByrcs(@Param("row") Integer row, @Param("col") Integer col, @Param("studio_id") Integer studio_id);

//    <!-- 根据票id链接查询座位的行和列-->


    Seat allHasBuy(@Param("seat_id") Integer seat_id, @Param("schedule_id") Integer schedule_id);


//    根据票的id获取座位的id

    Integer selectSeatIdByTiId(@Param("ticket_id") Integer ticket_id);

}

