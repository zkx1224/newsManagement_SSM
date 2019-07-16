package com.seven.service;

import com.seven.dao.NewsDao;
import com.seven.entity.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NewsService {
    @Autowired
    private NewsDao newsDao;

    public int getNewsCountBythemeId(int themeId) {
        return newsDao.getNewsCountBythemeId(themeId);
    }
    public List<News> getAllNews(){
        return newsDao.getAllNews();
    }
}
