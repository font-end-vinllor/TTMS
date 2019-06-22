package com.ff.controller;

import com.ff.entity.Order;
import com.ff.entity.User;
import com.ff.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class CollectController {

    @Autowired
    OrderService orderService;

    @RequestMapping("/love.do")
    public String toLove(Model model,HttpServletRequest req) {

//        查找该用户已经成功支付的订单，如果订单为空，转到图片页面，否则调到订单详情页面
        User user = (User) req.getSession().getAttribute("login");
        List<Order> orders = orderService.selectAllOrdersByUId(user.getUser_id());
        if(orders.isEmpty()) return "/miao/love";


        List<Order> orders1 = new ArrayList<>();
        orders1.add(orders.get(0));
        for (int i = 1; i < orders.size(); i++) {
            if (orders.get(i).getDate().equals(orders1.get(orders1.size() - 1).getDate())) {

                continue;
            } else {
                orders1.add(orders.get(i));
            }
        }

//        判断返回哪个页面
        if (orders1.isEmpty()) return "/miao/love";
        else {

            model.addAttribute("orders",orders1);
            return "/miao/MyOrder";
        }
    }

}
