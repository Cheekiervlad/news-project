package edu.java.itacademy.dao;

import edu.java.itacademy.entity.News;

import java.util.List;

public interface NewsDAO {
    List<News> getListOfNews();

    void saveNews(News news);

    News getNews(long newsId);

    void deleteNews(long newsId);
}
