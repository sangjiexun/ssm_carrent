package com.alfred.user.controller;

import cn.hutool.http.HttpResponse;
import com.alfred.user.entity.BusCar;
import com.alfred.user.entity.TbUser;
import com.alfred.user.service.TbUserService;
import com.fasterxml.jackson.annotation.JsonAnyGetter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;

/**
 * (TbUser)表控制层
 *
 * @author makejava
 * @since 2020-05-21 21:24:26
 */
@Controller
public class TbUserController {
    /**
     * 服务对象
     */
    @Autowired
    private TbUserService tbUserService;


/*首页*/
    @RequestMapping(value = "/user/index.action")
    public String showCarIndex(Model mv,HttpSession httpSession){
        System.out.println("打开首页成功");
        TbUser tbUser = new TbUser();
        List<BusCar> arrayList = tbUserService.carAllByLimit(1,6);
        mv.addAttribute("car",arrayList);
        tbUser = (TbUser) httpSession.getAttribute("tbuser");
        mv.addAttribute("tbuser",tbUser);
        return "user/index";
    }

    @RequestMapping("carDetail.action")
    public String carDetail(String car,Model model){
        BusCar busCarcar = tbUserService.carByCarNumber(car);
        model.addAttribute("car",busCarcar);
        System.out.println("车牌号是"+car);
        return "user/car_detail";
    }
    /**
     * 跳转登录页面
     * @param model
     * @return
     */
    @RequestMapping(value="/user/login.action",method= RequestMethod.GET)
    public String login(Model model,HttpSession httpSession) {
        model.addAttribute("tbuser",httpSession.getAttribute("tbuser"));
        return "user/user_login";
    }
    @RequestMapping("/user/loginCheck.action")
    public String loginCheck(String username, String password, Model model,HttpSession httpSession) {
        System.out.println("账号：" + username);
        System.out.println("密码：" + password);
        TbUser tbUser = tbUserService.loginCheck(username, password);
        //如果登录失败
        if (tbUser == null)
        {
            return "user/user_login";
        }
        else {
            System.out.println("登录成功跳转至首页");
            List<BusCar> arrayList = tbUserService.carAllByLimit(0,6);
            LinkedList linkedList = new LinkedList();
            BusCar busCar = new BusCar();
            Set<BusCar> set = new HashSet<>();
            for (int i = 0; i < arrayList.size(); i++) {
                //车号
                busCar.setCarnumber(arrayList.get(i).getCarnumber());
                //车封面
                busCar.setCarimg(arrayList.get(i).getCarimg());
                //车名
                busCar.setDescription(arrayList.get(i).getDescription());
                //车价
                busCar.setPrice(arrayList.get(i).getPrice());
                //租金
                busCar.setRentprice(arrayList.get(i).getRentprice());
                linkedList.add(busCar);
            }

            model.addAttribute("car",arrayList);
            model.addAttribute("tbuser",tbUser);
            httpSession.setAttribute("tbuser",tbUser);
            return "user/index";
        }
    }
    /*登录成功后进入用户中心*/
    @RequestMapping("/user/userCenter.action")
    public String userCenter(Model model,HttpSession httpSession){

        TbUser tbUser = new TbUser();
        tbUser = (TbUser) httpSession.getAttribute("tbuser");
        model.addAttribute("tbuser",tbUser);

        return "user/user_center";
    }




    /**
     *  登录成功后用户可以退出
     * @param request
     * @return
     */
    @RequestMapping(value = "/user/user_out.action",method = RequestMethod.GET)
    public String user_out(HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        HttpSession session = request.getSession();
        session.removeAttribute("tbuser");
        System.out.println("用户退出成功");
       return "user/user_out";
    }

    /**
     * 跳转注册页面
     * @returner
     */
    @RequestMapping("/user/register.action")
    public String register(Model model) {
        TbUser tbUser = new TbUser();
        model.addAttribute("tbuser",tbUser);
        return "user/user_register";
    }

    /**
     * 注册功能处理
     * @param username
     * @param password_final
     * @param identity
     * @return
     */
    @RequestMapping(value="/user/registCheck.action",method= RequestMethod.POST)
    public String registCheck(String username,String password_final,String identity) {
        System.out.println("账号：" + username);
        System.out.println("密码：" + password_final);
        System.out.println("身份证号：" + identity);
        int num = tbUserService.registCheck(username, password_final,identity);
        //如果注册失败
        if (num == 0)
        {
            return "user/user_register";
        } else if (num == 1) {
            return "user/user_login";
        } else {
            return "user/user_register";
        }
    }

    @RequestMapping(value = "user/rent.action")
    public String rent(String carnumber,String identity,HttpSession httpSession,Model model){
        //定义生成租赁单
        String rentcarnumber = "";
        model.addAttribute("tbuser",httpSession.getAttribute("tbuser"));
        System.out.println("当前："+identity+"用户正在租"+carnumber+"号车");
        rentcarnumber = tbUserService.carRent(carnumber,identity);
        System.out.println("租赁成功！租赁单为:"+rentcarnumber);

        return "user/index";
    }


}