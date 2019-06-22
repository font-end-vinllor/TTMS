package com.ff.controller;


import com.ff.dao.SeatMapper;
import com.ff.entity.Play;
import com.ff.entity.Schedule;
import com.ff.entity.User;
import com.ff.service.*;
import com.ff.utils.Test_ma;
import org.omg.Messaging.SYNC_WITH_TRANSPORT;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;


import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;


@Controller
@RequestMapping("/order")
public class OrderController {

    @Autowired
    PlayService playService;

    @Autowired
    ScheduleService scheduleService;
    @Autowired
    SeatService seatService;
    @Autowired
    TicketService ticketService;
    @Autowired
    OrderService orderService;

    @RequestMapping("/goOrder.do")
    public String goOrder() {
        return "/miao/order";
    }

    @RequestMapping("/getOrder.do")
    public String getOrder(Model model, Integer play_id, Integer schedule_id, String[] seatList) {

//    根据play_id查询剧目

        Play play = playService.playInfoById(play_id);
        model.addAttribute("order_play", play);

//        schedule_id--->   schedule
        Schedule schedule = scheduleService.selectScheById(schedule_id);
        model.addAttribute("order_sche", schedule);
        List<String> strings = Arrays.asList(seatList);
        List<String[]> showSeats = new ArrayList<>();
        int[] seats = new int[5];
        for (int i = 0; i < strings.size(); i++) {
            String replace = strings.get(i).replace("[", "").replace("]", "").replace("\"", "");
            String[] seat = replace.split("_");
            showSeats.add(seat);
            Integer seat_id = seatService.selectIdByrcs(Integer.parseInt(seat[0]), Integer.parseInt(seat[1]), schedule.getStudio_id());
            seats[i] = seat_id;

        }

        model.addAttribute("showSeats", showSeats);
        model.addAttribute("seats", seats);


        return "/miao/order";
    }

    /**
     * 跳转到支付页面,在数据库中加入订单，设置为未支付
     *
     * @param model
     * @param schedule_id
     * @param seats
     * @return
     */
    @RequestMapping("/pay.do")
    public String goPay(HttpServletRequest req,Model model, Integer schedule_id, Integer play_id,Integer[] seats) {


        Play play = playService.playInfoById(play_id);


        String code = Test_ma.getCode(7);

        Schedule schedule = scheduleService.selectScheById(schedule_id);
        model.addAttribute("schedule", schedule);
        model.addAttribute("seats", seats);
        model.addAttribute("code", code);
        model.addAttribute("play",play);
//　　　　　获取到所有座位对应的票的ＩＤ
        List<Integer> tickets = new ArrayList<>();
        for (int i = 0; i < seats.length; i++) {
            if(seats[i]!=0) {
                tickets.add(ticketService.selectTicketIdBySS(schedule_id, seats[i]));
            }
        }
model.addAttribute("tickets",tickets);
//        添加订单
        Date date = new Date();
        User user = (User) req.getSession().getAttribute("login");
        if(tickets.size()!=0) {
            for (int i = 0; i < tickets.size(); i++) {
                orderService.addOrder(tickets.get(i), date, user.getUser_id());
            }
        }


        return "/miao/pay";


    }

}
