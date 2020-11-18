package com.bz.njzycoming.contrallor;



import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

//@ResponseBody
//说明将这个类所有方法都给浏览器
//@Controller
@RestController
//上面两个注解的合体
public class Hello {
    @RequestMapping("/hello")
    public String hello(){
        System.out.println("成功");
        return "谢谢使用";
    }
}
