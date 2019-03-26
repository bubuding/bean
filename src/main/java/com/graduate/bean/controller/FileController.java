package com.graduate.bean.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;

/**
 * @param
 * @author
 * @description
 */

@Controller
@RequestMapping("/file")
public class FileController {

    @RequestMapping("/duo")
    public String  scdt(@RequestParam("test") MultipartFile file, HttpServletRequest request){
        System.out.println("kkk");
        if (file.isEmpty()) {
            return "fail";
        }
        System.out.println(file);
        return null;
    }
}
