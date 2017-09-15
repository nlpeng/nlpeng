package net.nlpeng.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by nlpeng on 2017/9/14.
 */
@Controller
public class indexController {

    @RequestMapping("/index")
    public String index(){
        return "home";
    }

    @RequestMapping("/user/login")
    public String login(){
        return "user/login";
    }
}
