package com.ff.service;

import com.ff.entity.Play;

import java.util.List;
public interface PlayService {

    List<Play> allPlaying(Integer status);

    List<String> allType();

    List<Play> allTypePlays(Integer status,String type);

    Play playInfoById(Integer play_id);


}
