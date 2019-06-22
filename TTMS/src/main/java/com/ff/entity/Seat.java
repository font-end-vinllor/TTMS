package com.ff.entity;


/**
 * @ClassName: Ticket
 * @Description TODO
 * @Author: jff
 * @Date: 2019-06-11 08:57
 * @Version: 1.0
 **/
public class Seat {
    private Integer seat_id;
    private Integer seat_row;
    private Integer seat_col;

    @Override
    public String toString() {
        return "Seat{" +
                "seat_id=" + seat_id +
                ", seat_row=" + seat_row +
                ", seaat_col=" + seat_col +
                '}';
    }

    public Integer getSeat_id() {
        return seat_id;
    }

    public void setSeat_id(Integer seat_id) {
        this.seat_id = seat_id;
    }

    public Integer getSeat_row() {
        return seat_row;
    }

    public void setSeat_row(Integer seat_row) {
        this.seat_row = seat_row;
    }

    public Integer getSeat_col() {
        return seat_col;
    }

    public void setSeat_col(Integer seaat_col) {
        this.seat_col = seaat_col;
    }
}
