package com.wzz.seccond.personal.controller;

import com.wzz.bean.Lesson;
import com.wzz.bean.Personal;
import com.wzz.seccond.personal.service.InpersonalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/personal")
public class personalController {
    @Autowired
    private InpersonalService inpersonalService;

    /**
     * 获取所有个人学习信息统计
     */
    @GetMapping("/getAllPersonalInformation")
    public String getAllPersonalInformation(Model model){
        try {
            List<Personal> list = inpersonalService.getAllPersonalInformation();
            model.addAttribute("personalList",list);
            return "user/index2";
        }catch (Exception e){
            e.printStackTrace();
            model.addAttribute("msg","获取失败");
            return "user/index2";
        }
    }
    /**
     * 添加成绩  之前 先把 lesson表中的数据给查出来，放在list中
     */
    public List<Lesson> getAllLesson(){
        List<Lesson> lessonList = inpersonalService.getAllLesson();
        return lessonList;
    }
    /**
     * 进入添加页面之前，先回显数据
     */
    @GetMapping(value = "/toAddScore")
    public String toAddScore(Model model,Personal personal){
        model.addAttribute("index","2");
        model.addAttribute("lessonList",getAllLesson());
        return "user/addStudent";
    }
    @PostMapping("/toAddScore")
    public String toAddScore1(Model model,Personal form){
        //判断查重  根据 sid 和 lname对比
        if(!inpersonalService.equalBySidAndLname(form)){
            inpersonalService.toAddScore(form);
            //添加后返回
            return "redirect:getAllPersonalInformation";
        }else{
            model.addAttribute("index","2");
            model.addAttribute("msg","该成员已存在！");
            return "user/addStudent";
        }
    }
    /**
     * 删除
     */
    @GetMapping(value = "/delete",params = "sid")
    public String delete(Model model,Integer sid) throws Exception {
        try{
            System.out.println(sid);
            inpersonalService.delete(sid);
            model.addAttribute("msg","删除成功！");
            return "forward:getAllPersonalInformation";
        }catch (Exception e){
            System.out.println(e);
            model.addAttribute("error","删除失败！");
            return "forward:getAllPersonalInformation";
        }
    }
    /**
     * 修改
     *
     */
    @GetMapping(value = "/edit",params = "sid")
    public String edit(Model model,Integer sid){
        //查询 回显
        Personal personal = inpersonalService.queryBySid(sid);
        model.addAttribute("personal",personal);
        model.addAttribute("index","2");
        model.addAttribute("lessonList",getAllLesson());
        return "user/editStudent";
    }
    @PostMapping(value = "/edit1")
    public String edit1(Model model,Personal personal){
        try{
            inpersonalService.edit(personal);
            model.addAttribute("msg","修改成功！");
            model.addAttribute("index",2);
            return "user/editStudent";
        }catch (Exception e){
            model.addAttribute("error","修改失败"+e);
            model.addAttribute("index",2);
            return "user/editStudent";
        }
    }


}
