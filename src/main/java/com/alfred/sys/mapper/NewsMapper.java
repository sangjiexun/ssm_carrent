package com.alfred.sys.mapper;

import com.alfred.sys.domain.News;

import java.util.List;

/**
 * @author Alfred
 * @date 2020/2/25 13:32
 */
public interface NewsMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(News record);

    int insertSelective(News record);

    News selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(News record);

    int updateByPrimaryKey(News record);

    /**
     * 查询
     * @param news
     * @return
     */
    List<News> queryAllNews(News news);
}
