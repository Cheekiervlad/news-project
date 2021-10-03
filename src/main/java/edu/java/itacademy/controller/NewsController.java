package edu.java.itacademy.controller;

import edu.java.itacademy.entity.News;
import edu.java.itacademy.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.List;

@Controller
@RequestMapping("/news")
public class NewsController {

    @Autowired
    private NewsService newsService;

    @RequestMapping("/main")
    public String listNews(Model model) {

        List<News> listOfNews = newsService.getListOfNews();

        model.addAttribute("list_of_news", listOfNews);

        return "main";
    }

    @GetMapping("/showFormOfAddingNews")
    public String showFormOfAddingNews(Model model) {

        News news = new News();
        model.addAttribute("news", news);
        return "news_adding_page";
    }

    @GetMapping("/showFormOfUpdatingNews")
    public String showFormOfUpdatingNews(@RequestParam("newsId") long newsId, Model model) {
        News news = newsService.getNews(newsId);

        model.addAttribute("news", news);

        return "news_adding_page";
    }

    @GetMapping("/showNews")
    public String showNews(@RequestParam("newsId") long newsId, Model model) {
        model.addAttribute("news", newsService.getNews(newsId));
        return "news_page";
    }

    @PostMapping("/saveNews")
    public String saveNews(@ModelAttribute("news") News news) {
        news.setDate(LocalDateTime.now());
        System.out.println(news);
        newsService.saveNews(news);
        return "redirect:/news/main";
    }

    @GetMapping("/deleteNews")
    public String deleteNews(@RequestParam("newsId") long newsId) {
        newsService.deleteNews(newsId);
        return "redirect:/news/main";
    }

}
