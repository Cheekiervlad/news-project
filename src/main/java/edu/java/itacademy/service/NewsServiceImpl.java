package edu.java.itacademy.service;

import edu.java.itacademy.dao.NewsDAO;
import edu.java.itacademy.entity.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class NewsServiceImpl implements NewsService {

    @Autowired
    private NewsDAO newsDao;

    @Override
    @Transactional
    public List<News> getListOfNews() {
        return newsDao.getListOfNews();
    }

    @Override
    @Transactional
    public News getNews(long newsId) {
        return newsDao.getNews(newsId);
    }

    @Override
    @Transactional
    public void saveNews(News news) {
        newsDao.saveNews(news);
    }

    @Override
    @Transactional
    public void deleteNews(long newsId) {
        newsDao.deleteNews(newsId);
    }

}
