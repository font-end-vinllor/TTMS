package com.ff.service.serviceImpl;

import com.ff.dao.PlayMapper;
import com.ff.entity.Play;
import com.ff.service.PlayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service
public class PlayServiceImpl implements PlayService {

    @Autowired
    PlayMapper playMapper;

    /**
     * 根据电影状态查询出所有剧目
     * @param status
     * @return
     */
    @Override
    public List<Play> allPlaying(Integer status) {
        return playMapper.allPlaying(status);
    }

    /**
     * 查询电影所有类型
     * @return
     */
    @Override
    public List<String> allType() {
        List<String> types = playMapper.allType();
        return types;
    }

    @Override
    public List<Play> allTypePlays(Integer status, String type) {
        return playMapper.allTypePlays(status,type);
    }

    @Override
    public Play playInfoById(Integer play_id) {
        return playMapper.playInfoById(play_id);
    }
}
