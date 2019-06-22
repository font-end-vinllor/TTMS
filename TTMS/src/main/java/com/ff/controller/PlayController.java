package com.ff.controller;

import com.ff.entity.Play;
import com.ff.entity.Schedule;
import com.ff.service.PlayService;
import com.ff.service.ScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.*;


@Controller
@RequestMapping("/play")
public class PlayController {

    @Autowired
    PlayService playService;

    @Autowired
    ScheduleService scheduleService;
    /**
     * 跳转到主页面
     *
     * @return
     */
    @RequestMapping("/index.do")
    public String index(Model model) {

//        查询出所有热映的电影
        List<Play> playings = playService.allPlaying(1);
        model.addAttribute("playings", playings);

//        查询出即将上映的所有电影
        List<Play> upPlays = playService.allPlaying(0);
        model.addAttribute("upPlays", upPlays);
//      查询出所有剧目类型
        List<String> types = playService.allType();
        model.addAttribute("types", types);

//        查询出所有各种类型的电影

        allTypePlays(model, types);

        return "index1";
    }

    /**
     * 查询剧目详情带到详情页面
     *
     * @param model
     * @param play_id
     * @return
     */
    @RequestMapping("/doInfo.do")
    public String playInfoById(Model model, Integer play_id) {

        Play play = playService.playInfoById(play_id);
        model.addAttribute("info", play);
        return "/miao/playInfo";
    }

    @RequestMapping("/doScInfo")
    public String playScInfoById(Model model, Integer play_id) {
        Play play = playService.playInfoById(play_id);
        model.addAttribute("info1", play);
//  查出所有日期
        List<Date> dates = scheduleService.dateByPlayId(play_id);
        model.addAttribute("dates",dates);

        Iterator<Date> it = dates.iterator();
        Map<Date,List<Schedule>> scMap = new HashMap<>();
        while(it.hasNext()){
            Date dat = it.next();
            List<Schedule> schs = scheduleService.schByDateAndPId(play_id, dat + "");
            scMap.put(dat,schs);
        }
        model.addAttribute("schMap",scMap);
        return "/miao/select_seat";
    }


    private void allTypePlays(Model model, List<String> types) {
        List<Play> list1 = playService.allTypePlays(1, types.get(0));
        model.addAttribute("list1", list1);
        List<Play> list2 = playService.allTypePlays(1, types.get(1));
        model.addAttribute("list2", list2);
        List<Play> list3 = playService.allTypePlays(1, types.get(2));
        model.addAttribute("list3", list3);
        List<Play> list4 = playService.allTypePlays(1, types.get(3));
        model.addAttribute("list4", list4);
        List<Play> list5 = playService.allTypePlays(1, types.get(4));
        model.addAttribute("list5", list5);
        List<Play> list6 = playService.allTypePlays(1, types.get(5));
        model.addAttribute("list6", list6);
        List<Play> list7 = playService.allTypePlays(1, types.get(6));
        model.addAttribute("list7", list7);
    }


}
