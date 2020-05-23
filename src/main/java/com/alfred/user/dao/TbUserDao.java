package com.alfred.user.dao;

import com.alfred.bus.domain.Customer;
import com.alfred.bus.domain.Rent;
import com.alfred.sys.constant.SysConstant;
import com.alfred.sys.utils.RandomUtils;
import com.alfred.user.entity.BusCar;
import com.alfred.user.entity.TbUser;
import org.apache.ibatis.annotations.Param;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * (TbUser)表数据库访问层
 *
 * @author makejava
 * @since 2020-05-21 21:24:24
 */
public interface TbUserDao {


    int createRentNumber(String number);


    /**
     * 注册功能
     * @param username
     * @return
     */
    int registCheck(@Param("username") String username,@Param("password") String password_final,@Param("identity") String identity);
    /**
     * 登录功能
     * @param username
     * @return
     */
    TbUser loginCheck(String username);

    BusCar carByCarNumber(String carnmuber);

//
//
//    /**
//     * 通过ID查询单条数据
//     *
//     * @param id 主键
//     * @return 实例对象
//     */
   TbUser queryCustomerByIdentity(String identity);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    ArrayList<BusCar> carAllByLimit(@Param("offset") int offset, @Param("limit") int limit);

    /**
     * 前端用户进行租车申请
     * @param rent
     * @return
     */
    int createRent(Rent rent);

    /**
     * 租车后减少用户余额
     * @param rent
     * @return
     */
    int downMoney(Rent rent);

    int createCustomer(Customer customer);

    int changeCarState(String carnumber);
}