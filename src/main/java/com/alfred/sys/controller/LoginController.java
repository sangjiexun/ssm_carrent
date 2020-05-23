package com.alfred.sys.controller;

import cn.hutool.captcha.CaptchaUtil;
import cn.hutool.captcha.LineCaptcha;
import com.alfred.sys.constant.SysConstant;
import com.alfred.sys.domain.User;
import com.alfred.sys.service.LogInfoService;
import com.alfred.sys.service.UserService;
import com.alfred.sys.utils.WebUtils;
import com.alfred.sys.vo.LogInfoVo;
import com.alfred.sys.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;

/**
 * 用户登录控制器
 * @author Alfred
 * @date 2020/2/11 15:57
 */
@Controller
@RequestMapping("login")
public class LoginController {

    @Autowired
    private UserService userService;

    @Autowired
    private LogInfoService logInfoService;

    /**
     * @return 跳转到登录页面的方法
     */
    @RequestMapping("toLogin")
    public String toLogin(){
        return "system/main/login";
    }

    /**
     * .登陆方法
     * @param userVo
     * @param model
     * @return
     */
    @RequestMapping("login")
    public String login(UserVo userVo, Model model){
        String code = "";
        if(WebUtils.getHttpSession().getAttribute("code").toString() == null){
            return "/";
        }else{
            code  = WebUtils.getHttpSession().getAttribute("code").toString();
        }
        if(userVo.getCode().equals(code)){
            User user = this.userService.login(userVo);
            System.out.println("user = " + user);
            if(null!=user){
                //放入到session
                WebUtils.getHttpSession().setAttribute("user",user);
                //记录登录日志向sys_login_log里插入数据
                LogInfoVo logInfoVo = new LogInfoVo();
                logInfoVo.setLogintime(new Date());
                logInfoVo.setLoginname(user.getRealname()+"-"+user.getLoginname());
                logInfoVo.setLoginip(WebUtils.getHttpServletRequest().getRemoteAddr());
                logInfoService.addLogInfo(logInfoVo);
                WebUtils.getServletRequestAttributes().setAttribute("user",user,1);
                return "system/main/index";
            }else {
                model.addAttribute("error", SysConstant.USER_LOGIN_ERROR_MSG);
                return "system/main/login";
            }
        }else {
            model.addAttribute("error", SysConstant.USER_LOGIN_CODE_ERROR_MSG);
            return "system/main/login";
        }

    }

    @RequestMapping("getCode")
    public void getCode(HttpServletResponse response, HttpSession session) throws IOException {
        //定义图形验证码的长和宽
        LineCaptcha lineCaptcha = CaptchaUtil.createLineCaptcha(116,36,4,5);
        session.setAttribute("code",lineCaptcha.getCode());
        ServletOutputStream outputStream = response.getOutputStream();
        ImageIO.write(lineCaptcha.getImage(),"JPEG",outputStream);

    }


}
