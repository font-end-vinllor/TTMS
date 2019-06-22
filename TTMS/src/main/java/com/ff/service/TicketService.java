package com.ff.service;

import java.util.List;

public interface TicketService {

    void addTicket(Integer seat_id,Integer schedule_id,String code);

    Integer selectTicketIdBySS(Integer schedule_id,Integer seat_id);

    List<Integer> hasBuy(Integer schedule_id);


    void deleteTicket(Integer order_id);
}
