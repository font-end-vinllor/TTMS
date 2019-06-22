package com.ff.service.serviceImpl;

import com.ff.dao.TicketMapper;
import com.ff.service.TicketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TicketServiceImpl implements TicketService {
    @Autowired
    TicketMapper ticketMapper;

    @Override
    public void addTicket(Integer seat_id, Integer schedule_id, String code) {
        ticketMapper.addTicket(seat_id,schedule_id,code);
    }

    @Override
    public Integer selectTicketIdBySS(Integer schedule_id, Integer seat_id) {
        return ticketMapper
                .selectTicketIdBySS(schedule_id,seat_id);
    }

    @Override
    public List<Integer> hasBuy(Integer schedule_id) {
        return ticketMapper.hasBuy(schedule_id);
    }

    @Override
    public void deleteTicket(Integer order_id) {
        ticketMapper.deleteTicket(order_id);
    }
}
