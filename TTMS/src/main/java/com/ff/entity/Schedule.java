package com.ff.entity;


import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Schedule {
    private Integer schedule_id;



    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date schedule_date;

    private String schedule_time;
    private String studio_name;
    private Integer price;
    private Integer seatCount;
   private Integer studio_id;

    public Integer getStudio_id() {
        return studio_id;
    }

    public void setStudio_id(Integer studio_id) {
        this.studio_id = studio_id;
    }

    public Integer getSeatCount() {
        return seatCount;
    }

    public void setSeatCount(Integer seatCount) {
        this.seatCount = seatCount;
    }

    @Override
    public String toString() {
        return "Schedule{" +
                "schedule_id=" + schedule_id +
                ", schedule_date=" + schedule_date +
                ", schedule_time='" + schedule_time + '\'' +
                ", studio_name='" + studio_name + '\'' +
                ", price=" + price +
                ", seatCount=" + seatCount +
                ", studio_id=" + studio_id +
                '}';
    }

    public Integer getSchedule_id() {
        return schedule_id;
    }

    public void setSchedule_id(Integer schedule_id) {
        this.schedule_id = schedule_id;
    }

    public Date getSchedule_date() {
        return schedule_date;
    }

    public void setSchedule_date(Date schedule_date) {
        this.schedule_date = schedule_date;
    }

    public String getSchedule_time() {
        return schedule_time;
    }

    public void setSchedule_time(String schedule_time) {
        this.schedule_time = schedule_time;
    }

    public String getStudio_name() {
        return studio_name;
    }

    public void setStudio_name(String studio_name) {
        this.studio_name = studio_name;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }
}

