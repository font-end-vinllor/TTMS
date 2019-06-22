package com.ff.entity;

/**
 * 剧目
 */
public class Play {

    private Integer play_id;

    private String play_type;
    private String play_name;
    private String play_author;
    private String play_desc;
    private String play_image;
    private Integer play_states;
    private String play_editor;
    private String play_country;
    private String play_company;
    private String play_time;  //剧目影长

    @Override
    public String toString() {
        return "Play{" +
                "play_id=" + play_id +
                ", play_type='" + play_type + '\'' +
                ", play_name='" + play_name + '\'' +
                ", play_author='" + play_author + '\'' +
                ", play_desc='" + play_desc + '\'' +
                ", play_image='" + play_image + '\'' +
                ", play_states=" + play_states +
                ", play_editor='" + play_editor + '\'' +
                ", play_country='" + play_country + '\'' +
                ", play_company='" + play_company + '\'' +
                ", play_time='" + play_time + '\'' +
                '}';
    }

    public Integer getPlay_id() {
        return play_id;
    }

    public void setPlay_id(Integer play_id) {
        this.play_id = play_id;
    }

    public String getPlay_type() {
        return play_type;
    }

    public void setPlay_type(String play_type) {
        this.play_type = play_type;
    }

    public String getPlay_name() {
        return play_name;
    }

    public void setPlay_name(String play_name) {
        this.play_name = play_name;
    }

    public String getPlay_author() {
        return play_author;
    }

    public void setPlay_author(String play_author) {
        this.play_author = play_author;
    }

    public String getPlay_desc() {
        return play_desc;
    }

    public void setPlay_desc(String play_desc) {
        this.play_desc = play_desc;
    }

    public String getPlay_image() {
        return play_image;
    }

    public void setPlay_image(String play_image) {
        this.play_image = play_image;
    }

    public Integer getPlay_states() {
        return play_states;
    }

    public void setPlay_states(Integer play_states) {
        this.play_states = play_states;
    }

    public String getPlay_editor() {
        return play_editor;
    }

    public void setPlay_editor(String play_editor) {
        this.play_editor = play_editor;
    }

    public String getPlay_country() {
        return play_country;
    }

    public void setPlay_country(String play_country) {
        this.play_country = play_country;
    }

    public String getPlay_company() {
        return play_company;
    }

    public void setPlay_company(String play_company) {
        this.play_company = play_company;
    }

    public String getPlay_time() {
        return play_time;
    }

    public void setPlay_time(String play_time) {
        this.play_time = play_time;
    }
}
