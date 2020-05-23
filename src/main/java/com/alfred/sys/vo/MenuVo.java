package com.alfred.sys.vo;

import com.alfred.sys.domain.Menu;

/**
 * @author Alfred
 * @date 2020/2/14 12:29
 */
public class MenuVo extends Menu {

    private Integer page;
    private Integer limit;

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getLimit() {
        return limit;
    }

    public void setLimit(Integer limit) {
        this.limit = limit;
    }
}
