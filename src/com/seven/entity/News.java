package com.seven.entity;
import java.util.Date;

/*
 * 新闻 实体类
 * @author  
 */
public class News{
    private int newsId;
	private int themeId;
	private String newsTitle;
	private String newsAuthor;
	private Date newsCreatedate;
	private String newsPicpath;
	private String newsContent;
	private Date newsModifydate;
	private String newsSummary;

	public void setNewsId(int newsId) {
		this.newsId = newsId;
	}
	public void setThemeId(int themeId) {
		this.themeId = themeId;
	}
	public int getThemeId() {
		return themeId;
	}

	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}

	public void setNewsAuthor(String newsAuthor) {
		this.newsAuthor = newsAuthor;
	}

	public void setNewsCreatedate(Date newsCreatedate) {
		this.newsCreatedate = newsCreatedate;
	}

	public void setNewsPicpath(String newsPicpath) {
		this.newsPicpath = newsPicpath;
	}

	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}

	public void setNewsModifydate(Date newsModifydate) {
		this.newsModifydate = newsModifydate;
	}

	public void setNewsSummary(String newsSummary) {
		this.newsSummary = newsSummary;
	}

	public int getNewsId() {
		return newsId;
	}



	public String getNewsTitle() {
		return newsTitle;
	}

	public String getNewsAuthor() {
		return newsAuthor;
	}

	public Date getNewsCreatedate() {
		return newsCreatedate;
	}

	public String getNewsPicpath() {
		return newsPicpath;
	}

	public String getNewsContent() {
		return newsContent;
	}

	public Date getNewsModifydate() {
		return newsModifydate;
	}

	public String getNewsSummary() {
		return newsSummary;
	}
}
