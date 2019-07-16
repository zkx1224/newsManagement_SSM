package com.seven.controller;
import com.seven.entity.News;
import com.seven.service.NewsService;
import com.seven.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@RequestMapping("/news")
@Controller
public class NewsController {
	@Autowired
	private NewsService newsService;
	@ResponseBody
	@RequestMapping("/getNews")
	public Result<List<News>> getNews(){
		System.out.println("--------------------------getNews------------------------------------");
		//newsService.getNews();返回list
		int count=newsService.getNewsCountBythemeId(5);
		System.out.println("--------------------------count:"+count+"------------------------------------");
		System.out.println("--------------------------getNews------------------------------------");
        List<News> list=newsService.getAllNews();
        // 包装json返回给前端
		return Result.success(list);
	}

	
}
