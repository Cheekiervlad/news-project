package edu.java.itacademy.dao;

import edu.java.itacademy.entity.News;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class NewsDaoImpl implements NewsDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<News> getListOfNews() {

        Session currentSession = sessionFactory.getCurrentSession();

        Query<News> theQuery =
                currentSession.createQuery("from News order by date DESC", News.class);

        List<News> listOfNews = theQuery.getResultList();

        return listOfNews;
    }

    @Override
    public void saveNews(News news) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(news);
    }


    @Override
    public News getNews(long newsId) {
        Session currentSession = sessionFactory.getCurrentSession();
        News news = currentSession.get(News.class, newsId);
        return news;
    }

    @Override
    public void deleteNews(long newsId) {
        Session currentSession = sessionFactory.getCurrentSession();

        Query theQuery =
                currentSession.createQuery("delete from News where id=:newsId");
        theQuery.setParameter("newsId", newsId);

        theQuery.executeUpdate();
    }
}
