package com.ff.controller;

import com.ff.entity.Play;
import com.ff.entity.Schedule;
import com.ff.entity.Studio;
import com.ff.service.HallService;
import com.ff.service.PlayService;
import com.ff.service.ScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/seat")
public class SeatController {
    @Autowired
    PlayService playService;
    @Autowired
    ScheduleService scheduleService;
    @Autowired
    HallService hallService;

    @RequestMapping("/ticket.do")
    public String seatTicket(Model model, Integer play_id, Integer schedule_id) {
//     根据play_id 获取play
        Play play = playService.playInfoById(play_id);
        model.addAttribute("seat_play", play);
//        根据schedule_id 获取schedule
        Schedule sche = scheduleService.selectScheById(schedule_id);
        model.addAttribute("seat_sche", sche);
//        根据studio_id 获取演出厅
        Studio studio =hallService.selectHallById(sche.getStudio_id());
        model.addAttribute("seat_stu",studio);
        return "miao/seat";
    }
}
