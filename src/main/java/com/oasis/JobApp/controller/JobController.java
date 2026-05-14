package com.oasis.JobApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JobController {
    @RequestMapping({"/", "home"})
    public String home(){
        return "home.jsp";
    }

    @RequestMapping("addjob")
    public String addJob(){
        return "addjob.jsp";
    }

    @RequestMapping("handleForm")
    public String handleForm(){
        return "success.jsp";
    }

    @RequestMapping("contact")
    public String contact(){
        return "contact.jsp";
    }
}
