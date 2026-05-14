package com.oasis.JobApp.controller;

import com.oasis.JobApp.model.JobPost;
import com.oasis.JobApp.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class JobController {

    @Autowired
    private JobService service;

    @GetMapping({"/", "home"})
    public String home(){
        return "home.jsp";
    }

    @GetMapping("addjob")
    public String addJob(){
        return "addjob.jsp";
    }

    @PostMapping("handleForm")
    public String handleForm(JobPost jobPost){
        service.addJob(jobPost);
        return "success.jsp";
    }

    @GetMapping("contact")
    public String contact(){
        return "contact.jsp";
    }
}
