package com.ff.entity;

public class Studio {
    private Integer studio_id;
  private String studio_name;
  private Integer studio_rows;



    private Integer studio_cols;
  private String studio_desc;
    @Override
    public String toString() {
        return "Studio{" +
                "studio_id=" + studio_id +
                ", studio_name='" + studio_name + '\'' +
                ", studio_rows=" + studio_rows +
                ", studio_cols=" + studio_cols +
                ", studio_desc='" + studio_desc + '\'' +
                '}';
    }
    public String getStudio_name() {
        return studio_name;
    }

    public void setStudio_name(String studio_name) {
        this.studio_name = studio_name;
    }

    public Integer getStudio_rows() {
        return studio_rows;
    }

    public void setStudio_rows(Integer studio_rows) {
        this.studio_rows = studio_rows;
    }

    public Integer getStudio_cols() {
        return studio_cols;
    }

    public void setStudio_cols(Integer studio_cols) {
        this.studio_cols = studio_cols;
    }

    public String getStudio_desc() {
        return studio_desc;
    }

    public Integer getStudio_id() {
        return studio_id;
    }

    public void setStudio_id(Integer studio_id) {
        this.studio_id = studio_id;
    }

    public void setStudio_desc(String studio_desc) {
        this.studio_desc = studio_desc;
    }
}
