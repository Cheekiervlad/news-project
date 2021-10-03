package edu.java.itacademy.service;

import edu.java.itacademy.entity.News;

import java.util.List;

public interface NewsService {
    List<News> getListOfNews();

    void saveNews(News news);

    void deleteNews(long newsId);

    News getNews(long newsId);
}
