package com.wzz.important.submit.controller;

import com.wzz.important.submit.service.InsubmitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
@Controller
@RequestMapping("/submit")
public class submitController {

    @Autowired
    private InsubmitService insubmitService;
    @PostMapping("/homework")
    public String submitHomework(@RequestParam("myhomework") MultipartFile homework, Model model) throws IOException {
        //获取文件名，直接保存到file文件夹下
        System.out.println(1);
        System.out.println(homework);
        String filedirPath = "D:/uploadfiles";
        File filedir = new File(filedirPath);
        if(!filedir.exists()){
            filedir.mkdir();
        }
        if(!homework.isEmpty()){
            try {
                FileOutputStream fos = new FileOutputStream(filedir +"/"+ homework.getOriginalFilename());
                InputStream in = homework.getInputStream();
                int a = 0;
                if((a = in.read())!=-1){
                    fos.write(a);
                }
                in.close();
                fos.close();
            }catch (Exception e){
                model.addAttribute("msg","上传成功！");
                e.printStackTrace();
                return "user/form_advanced";
            }
        }
        model.addAttribute("msg","上传成功！");
        return "user/form_advanced";
    }

}
