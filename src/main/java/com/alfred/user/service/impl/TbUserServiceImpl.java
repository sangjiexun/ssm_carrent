package com.alfred.user.service.impl;

import com.alfred.bus.controller.RentController;
import com.alfred.bus.domain.Customer;
import com.alfred.bus.domain.Rent;
import com.alfred.sys.constant.SysConstant;
import com.alfred.sys.domain.User;
import com.alfred.sys.utils.RandomUtils;
import com.alfred.sys.utils.ResultObj;
import com.alfred.sys.utils.WebUtils;
import com.alfred.user.entity.BusCar;
import com.alfred.user.entity.TbUser;
import com.alfred.user.dao.TbUserDao;
import com.alfred.user.service.TbUserService;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.poi.ss.formula.functions.T;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * (TbUser)表服务实现类
 *
 * @author makejava
 * @since 2020-05-21 21:24:26
 */
@Service
@Transactional(readOnly = false, isolation = Isolation.DEFAULT, propagation = Propagation.REQUIRED)
public class TbUserServiceImpl implements TbUserService {

    @Autowired
    private TbUserDao tbUserDao;




    /**
     * 注册功能
     * @param username
     * @param password_final
     * @param identity
     * @return
     */
    @Override
    public int registCheck(String username, String password_final, String identity) {
        System.out.println("开始注册");
        System.out.println("传入的账号:"+username);
        System.out.println("传入的密码:"+password_final);
        System.out.println("传入的身份证:"+identity);
       //通过用户名进行查询
        int num = 0;
        try {
            tbUserDao.registCheck(username,password_final,identity);
            SqlSession sqlSession ;
            Customer customer = new Customer();
            customer.setIdentity(identity);
            customer.setCustname(username);
            customer.setAddress("");
            customer.setSex(null);
            customer.setCareer("");
            customer.setCreatetime(new Date());
            customer.setMoney(1000);
            tbUserDao.createCustomer(customer);
            System.out.println("注册成功！");
            num = 1;
            return num;
        } catch (Exception e){
            System.out.println("注册失败");
            e.printStackTrace();
            return num;
        }
    }

    /**
     * 登录功能
     * @param username
     * @param password
     * @return
     */
    @Override
    public TbUser loginCheck(String username,String password)
    {

        System.out.println("正在登录");
        System.out.println("传入的账号:"+username);
        System.out.println("传入的密码:"+password);
        //通过账号搜索出数据库中的用户密码然后和传入的密码进行比较
        //定义从数据库中找到的账号
        String findUserUsername = "";
        //定义从数据库中找到的密码
        String findUserPassword = "";
        //找到身份证
        String findUserIdentity = "";
        try {
            findUserUsername = tbUserDao.loginCheck(username).getUsername();
            findUserPassword = tbUserDao.loginCheck(username).getPassword();
            findUserIdentity = tbUserDao.loginCheck(username).getIdentity();
            System.out.println("找到的用户"+findUserUsername+"密码"+findUserPassword);
            //如果相同则登录成功
            if (password.equals(findUserPassword) == true){

                System.out.println("登录成功！");
                TbUser tbUser = new TbUser();
                tbUser.setUsername(username);
                tbUser.setPassword(findUserPassword);
                tbUser.setIdentity(findUserIdentity);
                return tbUser;
            } else {
                //如果不同则登录失败
                System.out.println("登录失败");
                System.out.println("密码错误");
                TbUser tbUser = new TbUser();
                return tbUser;
            }
        } catch (Exception e){
            e.printStackTrace();
            System.out.println("登录失败");
            System.out.println("数据库没有找到用户");
            return null;
        }
    }



    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
//    @Override
//    public TbUser queryById(Integer id) {
//        return tbUserDao.queryById(id);
//    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public ArrayList<BusCar> carAllByLimit(int offset, int limit) {
        return this.tbUserDao.carAllByLimit(offset, limit);
    }

    /**
     * 通过车牌号查询车详细信息
     * @param carnumber
     * @return
     */
    @Override
    public BusCar carByCarNumber(String carnumber) {
        System.out.println("正在查询车辆详细信息");

        BusCar busCar = tbUserDao.carByCarNumber(carnumber);

        return busCar;
    }

    @Override
    public String carRent(String carnumber,String identity) {
        //接收租赁单
        String rentcarnumber = "";
        try{
            //检查用户是否存在
            TbUser tbUser = tbUserDao.queryCustomerByIdentity(identity);
            if(tbUser!=null){
                //生成出租单号,使用随机生成工具类
                rentcarnumber = RandomUtils.createRandomStringUseTime(SysConstant.CAR_ORDER_CZ);
                //获取当前车的租金额
                double price = tbUserDao.carByCarNumber(carnumber).getRentprice();
                //插入新的租赁数据
                Rent rent = new Rent();
                rent.setRentid(rentcarnumber);
                rent.setPrice(price);
                rent.setBegindate(new Date());
                rent.setRentflag(1);
                rent.setIdentity(identity);
               // rent.setReturndate();只用系统管理员能还车
                rent.setCarnumber(carnumber);
                //设置操作员
                //tbUser = (TbUser) WebUtils.getHttpSession().getAttribute("tbuser");
                rent.setOpername(tbUser.getUsername());
                rent.setCreatetime(new Date());
                //插入一条新的租赁信息
                tbUserDao.createRent(rent);
                //用户的余额减少
                tbUserDao.downMoney(rent);
                System.out.println("用户："+tbUser.getUsername()+"的租赁单生成成功："+rentcarnumber);
                //改变汽车可租状态
                tbUserDao.changeCarState(carnumber);
                System.out.println(carnumber+"汽车状态已改变");
                return rentcarnumber;
            }else {
                System.out.println("用户没找到，租赁单生成失败");
                return rentcarnumber;
            }
        } catch (Exception e){
            e.printStackTrace();
            System.out.println("租赁单生成失败");
        }





        return rentcarnumber;
    }


//
//    /**
//     * 修改数据
//     *
//     * @param tbUser 实例对象
//     * @return 实例对象
//     */
//    @Override
//    public TbUser update(TbUser tbUser) {
//        this.tbUserDao.update(tbUser);
//        return this.queryById(tbUser.getId());
//    }
//
//    /**
//     * 通过主键删除数据
//     *
//     * @param id 主键
//     * @return 是否成功
//     */
//    @Override
//    public boolean deleteById(Integer id) {
//        return this.tbUserDao.deleteById(id) > 0;
//    }
}