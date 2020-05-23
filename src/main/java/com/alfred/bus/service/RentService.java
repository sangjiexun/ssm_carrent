package com.alfred.bus.service;

import com.alfred.bus.domain.Rent;
import com.alfred.bus.vo.RentVo;
import com.alfred.sys.utils.DataGridView;

/**
 * @author Alfred
 * @date 2020/3/5 12:25
 */
public interface RentService {

    void addRent(RentVo rentVo);

    /**
     * 查询
     * @param rentVo
     */
    DataGridView queryAllRent(RentVo rentVo);

    /**
     * 修改出租单
     * @param rentVo
     */
    void updateRent(RentVo rentVo);

    /**
     * 删除出租单
     * @param rentid
     */
    void deleteRent(String rentid);

    /**
     * 根据出租单号查询出租单信息
     * @param rentid
     * @return
     */
    Rent queryRentByRentId(String rentid);


}
