package com.ly.ssm.controller;

import com.ly.ssm.model.User;
import com.ly.ssm.service.UserService;
import com.ly.ssm.utils.Md5;
import javafx.scene.control.RadioMenuItem;
import org.apache.commons.io.FileUtils;
import org.apache.ibatis.annotations.Param;
import org.apache.log4j.ConsoleAppender;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//import java.io.Console;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.UUID;

/**
 * Created by ly on 2017/11/30.
 */

@Controller
@RequestMapping("/user")
public class UserController {

    private Logger log = Logger.getLogger(UserController.class);
    @Resource
    private UserService userService;



    @RequestMapping(value="/login.do",method=RequestMethod.POST)
    public String login(User user,HttpServletRequest request) {
        HttpSession session = request.getSession();
        Md5 md5 = new Md5();
        String pass=md5.MD5(user.getUserPwd());
        user=userService.checkLogin(user.getUserName(), pass);
        if(user!=null){
            session.setAttribute("user", user);
            return "redirect:/user/showUser.do";// 路径
        }
//        System.out.print(111);
        return "index";
    }

    @RequestMapping("/showUser.do")
    public String showUser(HttpServletRequest request, Model model) {
        log.info("查询所有用户信息");
        List<User> userList = userService.getAllUser();
        model.addAttribute("userList", userList);
        return "app/jsp/showUser";
    }

    @RequestMapping(value = "/add.do")
    public String toAdd(HttpServletRequest request) {
        return "app/jsp/add";

    }

    @RequestMapping("/get/{userId}.do")
    public String findById(@PathVariable Long userId, HttpServletRequest request, Model model) {
        User user = userService.getUserById(userId);
        model.addAttribute("user", user);
        return "app/jsp/detail";
    }

    @RequestMapping(value = "/findUserName.do", method = RequestMethod.POST)
    public String findUserName(String userName, String userPhone, HttpServletRequest request, Model model) {
        log.info("查询用户信息");
        List<User> userList = userService.findUserName(userName, userPhone);
        log.info(userName);
        model.addAttribute("userList", userList);
        return "app/jsp/showUser";
    }

    @RequestMapping(value = "/save.do", method = RequestMethod.POST)
    public String save(User user, String pass1) {
        Md5 md5 = new Md5();
        if (pass1 != null && !pass1.equals("")) {
            String pass = Md5.MD5(pass1);

            String ps=pass.substring(0,6);
            log.info("保存用户");
            Date date = new Date();

            short isdelete=0;
            Random r = new Random();
            long ids = r.nextLong();
            user.setId(ids);
            user.setCreateTime(date);
            user.setModifyTime(date);
            user.setIsDelete(isdelete);
            user.setUserPwd(pass);
            user.setPwdSalt(ps);
            userService.save(user);
        }
            return "redirect:/user/showUser.do";
        }


    @RequestMapping(value = "/update.do", method = RequestMethod.POST)
    public String update(User user) {
        log.info("更改用户");
        Date date = new Date();
        user.setModifyTime(date);
        userService.update(user);
        return "redirect:/user/showUser.do";
    }

    @RequestMapping(value = "/delete/{userId}.do", method = RequestMethod.GET)
    public String delete(@PathVariable Long userId, HttpServletRequest request) {
        log.info("删除用户");
        userService.delete(userId);
        return "redirect:/user/showUser.do";
    }

//    @RequestMapping(value = "/upload.do", method = RequestMethod.POST)
//    public String fileUpload(
//            @RequestParam("file") CommonsMultipartFile file, User user,
//            HttpServletRequest request) {
//        log.info("上传附件");
//        if (!file.isEmpty()) {
//            String type = file.getOriginalFilename().substring(
//                    file.getOriginalFilename().indexOf("."));// 取文件格式后缀名
//            String filename = System.currentTimeMillis() + type;// 取当前时间戳作为文件名
//            String path = request.getSession().getServletContext()
//                    .getRealPath("/images/" + filename);// 存放位置
//            File destFile = new File(path);
//            try {
//                // FileUtils.copyInputStreamToFile()这个方法里对IO进行了自动操作，不需要额外的再去关闭IO流
//                FileUtils
//                        .copyInputStreamToFile(file.getInputStream(), destFile);// 复制临时文件到指定目录下
//                user.setImageUrl("/images/" + filename);
//                Date date = new Date();
//                user.setModifyTime(date);
//                userService.update(user);
//            } catch (Exception e) {
//                e.printStackTrace();
//            }
//
//        }
//        return "redirect:/user/showUser.do";
//    }



    @RequestMapping(value="/loginOut.do", method = RequestMethod.GET)
    public String loginOut(HttpServletRequest request,HttpServletResponse httpServletResponse) {
        log.info("销毁用户");
        HttpSession session = request.getSession(false);
        if(session==null){
            return "index";// 路径
        }
        session.invalidate();
        return "index";
    }

}
