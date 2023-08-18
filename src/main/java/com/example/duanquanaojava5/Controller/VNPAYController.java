package com.example.duanquanaojava5.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class VNPAYController {
    @GetMapping("/vnpay")
    public String index(){
        return "/VNPAY/index";
    }
    @GetMapping("/orderfail")
    public String orderfail(){
        return "/VNPAY/orderfail";
    }
    @GetMapping("/ordersuccess")
    public String ordersuccess(){
        return "/VNPAY/ordersuccess";
    }
}
