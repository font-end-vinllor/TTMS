package com.ff.service.serviceImpl;

import com.ff.dao.SearchMapper;
import com.ff.entity.Play;
import com.ff.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SearchServiceImpl implements SearchService {

    @Autowired
    SearchMapper searchMapper;
    @Override
    public List<Play> searchPlay(String s) {
        return searchMapper.searchPlay(s);
    }
}
