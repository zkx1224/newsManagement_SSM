package com.seven.dao;
import com.seven.entity.News;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface NewsDao {
    // 根据themeId查找新闻的数量
    @Select("select count(*) from newstable where themeId=#{themeId}")
    public int getNewsCountBythemeId(@Param("themeId")int themeId);
    // 返回所有的新闻
    @Select("select newsId,themeId,newsTitle,newsAuthor,newsCreatedate,newsPicpath,newsContent,newsModifydate,newsSummary from newstable")
    public List<News> getAllNews();
}
