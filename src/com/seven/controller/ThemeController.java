package com.seven.controller;
import com.seven.entity.Theme;
import com.seven.service.NewsService;
import com.seven.service.ThemeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@RequestMapping("/theme")
@Controller
public class ThemeController {

	@Autowired
	private ThemeService themeService;
	@Autowired
	private NewsService newsService;

	@ResponseBody
	@RequestMapping("/getNewsCount")
	public Map<String,Integer> getNewsCount(Model model) {
		System.out.println("--------------------------getNewsCount------------------------------------");
		int count=newsService.getNewsCountBythemeId(5);
		System.out.println("--------------------------count:"+count+"------------------------------------");
		System.out.println("--------------------------getNews------------------------------------");
		model.addAttribute("count",count);
		Map<String,Integer> map=new HashMap<>();
		map.put("key",count);
		return map;
	}

	@ResponseBody
	@RequestMapping("/addTheme") //指定方式：method=RequestMethod.GET
	public void addTheme(Model model,@PathVariable("themeName")String themeName){
		Theme theme=new Theme();
		theme.setThemeName(themeName);
		System.out.println("--------------------------addTheme------------------------------------");
		themeService.addTheme(theme);
	}

    @ResponseBody
	@RequestMapping("/listTheme")
	public List<Theme> listTheme() {
        List<Theme> themeList=themeService.findAllThemes();
        System.out.println("--------------------------listTheme------------------------------------");
        System.out.println("--------------------------listsize:"+themeList.size()+"------------------------------------");
		return themeList;
	}

	@RequestMapping("/delete")
	public void delete(@PathVariable("themeId")int themeId){
        System.out.println("--------------------------delete------------------------------------");
        themeService.deleteTheme(themeId);

	}
	@RequestMapping("/update")
	public void update(){
        System.out.println("--------------------------delete------------------------------------");
        Theme theme=new Theme();
        theme.setThemeID(5);
        theme.setThemeName("ljs");
        int res=themeService.updateTheme(theme);
        System.out.println("--------------------------"+res+"------------------------------------");
	}


	
}
