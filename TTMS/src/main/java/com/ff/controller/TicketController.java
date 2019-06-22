package com.ff.controller;


import com.alibaba.fastjson.JSONArray;
import com.ff.entity.Play;
import com.ff.entity.Schedule;
import com.ff.entity.Seat;
import com.ff.entity.User;
import com.ff.service.*;
import com.ff.utils.FastDfsUtils;
import com.ff.utils.Qrcode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/ticket")
public class TicketController {
    @Autowired
    TicketService ticketService;

    @Autowired
    OrderService orderService;
    @Autowired
    SeatService seatService;
    @Autowired
    ScheduleService scheduleService;
    @Autowired
    PlayService playService;


    @RequestMapping("/deleteTicket.do")
    @ResponseBody
     public String deleteTicket(Integer order_id){
         ticketService.deleteTicket(order_id);
         return "ok";
     }
    /**
     * 根据演出计划查询所有已经买的票,将票对应的座位返回给前台
     *
     * @param schedule_id
     * @return
     */
    @RequestMapping("/hasBuy.do")
    @ResponseBody
    public String hasBuy(Integer schedule_id) {
//        查询所有为１的票的id
        List<Integer> buys = ticketService.hasBuy(schedule_id);



        List<String> seatBuys = new ArrayList<>();

//        获取所有买了的座位的航和列
        for (int j = 0; j < buys.size(); j++) {

            Seat seat = seatService.allHasBuy(seatService.selectSeatIdByTiId(buys.get(j)),schedule_id);
            seatBuys.add(seat.getSeat_row() + "_" + seat.getSeat_col());
        }

        return JSONArray.toJSONString(seatBuys);
    }

    /**
     * 　　添加已成功支付的票　　　发送给邮箱二维码看电影详情　　将对应的订单修改状态
     *
     * @param code
     * @param schedule_id
     * @param seats
     * @return
     * @throws Exception
     */
    @RequestMapping("/addTicket.do")
    public String addTicket(HttpServletRequest req, String code, Integer play_id,Integer schedule_id,
                            Integer[] seats) {
//　　修改订单状态


        List<Integer> tickets = new ArrayList<>();
        for (int i = 0; i < seats.length; i++) {
            if (seats[i] != 0) {
                tickets.add(ticketService.selectTicketIdBySS(schedule_id, seats[i]));
            }
        }


        for (int j = 0; j < tickets.size(); j++) {
            orderService.updateOrderStatus(tickets.get(j));
        }


//        添加票
        try {
            if (seats.length != 0) {
                for (int i = 0; i < seats.length; i++) {
                    if (seats[i] != 0) {
                        ticketService.addTicket(seats[i], schedule_id, code);
                    }
                }
            }



//            发送邮件
            String imgUrl = uploadCode("http://192.168.43.24:8080/ticket/showTicket.do?play_id="+play_id+"&code="+code+"&schedule_id=" +
                    schedule_id + "&seats=" + seats[0] + "," + seats[1] + "," + seats[2] + "," + seats[3] + "," +
                    seats[4]
            );
//        String imgUrl  = uploadCode("play/index.do");
            User login = (User) req.getSession().getAttribute("login");
//        发送二维码给邮箱
            if (login != null) {
                sendCodeImg(imgUrl, login.getUser_qq() + "@qq.com");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/play/index.do";
    }


    @RequestMapping("/showTicket.do")
    public String showTicket(Model model, String code,Integer play_id, Integer schedule_id, Integer[] seats) {
        model.addAttribute("show_code", code);
        Schedule schedule = scheduleService.selectScheById(schedule_id);
        model.addAttribute("sche", schedule);
        List<String> seat = new ArrayList<>();
        for (int k = 0; k < seats.length; k++) {
            if (seats[k] != 0) {
                Seat seat1 = seatService.allHasBuy(seats[k],schedule_id);
                seat.add(seat1.getSeat_row() + "排" + seat1.getSeat_col() + "座");
            }
        }

        model.addAttribute("seat", seat);

        Play play = playService.playInfoById(play_id);
        model.addAttribute("play",play);
        return "/miao/ticket";
    }


    @Value("${fast_ip}")
    private String img_ip;

    /**
     * 生成二维码，上传到服务器，返回图片ｕｒｌ
     */
    private String uploadCode(String text) throws Exception {
        String codePath = Qrcode.generateQRCode(text, 200, 200, "jpg");

        String uploadUrl = FastDfsUtils.upload(codePath, "jpg");

        return this.img_ip + uploadUrl;
    }



    /**
     * 发送邮件
     */


    @Resource(name = "mailSender")
    JavaMailSender mailSender;

    private void sendCodeImg(String url, String receive) throws MessagingException {
        MimeMessage msg = mailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(msg, true, "utf-8");
        helper.setFrom("364621561@qq.com");
        helper.setTo(receive);
        helper.setSubject("MiaoMiao影厅");
        helper.setText("<span><img src='" + url + "'></img></span>", true);
        mailSender.send(msg);
    }
}
