package com.alfred.user.service;

import com.alfred.user.entity.BusCar;
import com.alfred.user.entity.TbUser;

import java.util.ArrayList;
import java.util.List;

/**
 * (TbUser)表服务接口
 *
 * @author makejava
 * @since 2020-05-21 21:24:25
 */
public interface TbUserService {
/*登录注册*/
    TbUser loginCheck(String username,String password);
    int registCheck(String username,String password_final,String identity);
/*查看所有车和提交租车*/
    /**
     * 查询多条数据
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    ArrayList<BusCar> carAllByLimit(int offset, int limit);

    /*通过车牌号查看车的详细信息*/
    BusCar carByCarNumber(String carnumber);

    /*通过用户的身份证进行生成租赁单*/
    /*并将车辆不可租赁状态调整为1 不可租赁*/
    String carRent(String carnumber,String identity);
//
//    /**
//     * 修改数据
//     *
//     * @param tbUser 实例对象
//     * @return 实例对象
//     */
//    TbUser update(TbUser tbUser);
//
//    /**
//     * 通过主键删除数据
//     *
//     * @param id 主键
//     * @return 是否成功
//     */
//    boolean deleteById(Integer id);

}