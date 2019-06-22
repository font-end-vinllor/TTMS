package com.ff.entity;

import java.util.Date;

public class Order {

    private Integer order_id;
    private String  play_image;
    private Integer price;
    private String play_name;
    private Date date;
    private Integer seatCounts;

    public Integer getSeatCounts() {
        return seatCounts;
    }

    public void setSeatCounts(Integer seatCounts) {
        this.seatCounts = seatCounts;
    }

    @Override
    public String toString() {
        return "Order{" +
                "order_id=" + order_id +
                ", play_image='" + play_image + '\'' +
                ", price=" + price +
                ", play_name='" + play_name + '\'' +
                ", date=" + date +
                '}';
    }

    public Integer getOrder_id() {
        return order_id;
    }

    public void setOrder_id(Integer order_id) {
        this.order_id = order_id;
    }

    public String getPlay_image() {
        return play_image;
    }

    public void setPlay_image(String play_image) {
        this.play_image = play_image;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getPlay_name() {
        return play_name;
    }

    public void setPlay_name(String play_name) {
        this.play_name = play_name;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
