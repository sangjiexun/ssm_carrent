package com.alfred.sys.service;

import com.alfred.sys.domain.LogInfo;
import com.alfred.sys.utils.DataGridView;
import com.alfred.sys.vo.LogInfoVo;

import java.util.List;

/**
 * 日志管理服务接口
 * @author Alfred
 * @date 2020/2/17 13:55
 */
public interface LogInfoService {

    /**
     * 查询所有日志
     * @param logInfoVo
     * @return
     */
    public DataGridView queryAllLogInfo(LogInfoVo logInfoVo);

    /**
     * 添加日志
     * @param logInfoVo
     */
    public void addLogInfo(LogInfoVo logInfoVo);

    /**
     * 根据id删除日志
     * @param logInfoid
     */
    public void deleteLogInfo(Integer logInfoid);

    /**
     * 批量删除日志
     * @param ids
     */
    public void deleteBatchLogInfo(Integer[] ids);


}
