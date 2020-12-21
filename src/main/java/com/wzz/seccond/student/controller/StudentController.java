package com.wzz.seccond.student.controller;

import com.wzz.bean.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.wzz.seccond.student.service.InStudentService;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.sql.SQLException;
import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {
    @Autowired
    private InStudentService studentService;

    /**
     * 获取所有学生信息
     * @param request
     * @return
     */
    @RequestMapping("/getAllStudentInformation")
    public String getAllStudentInformation(HttpServletRequest request){
        List<Student> list = studentService.getAllStudentInformation();
        System.out.println(list);
        request.setAttribute("studentList",list);
        return "user/index";
    }
    /**
     * 增加学生
     *
     * 增加学生的信息，同时要加入到 personal表中
     */
    @PostMapping("/addStudent")
    public String addStudent(Student form,Model model){
        //直接插入 采用异常判断
        try{
            studentService.addStudent(form);
//            studentService.addStudentToPersonal(form);
            model.addAttribute("msg","插入成功！");
            model.addAttribute("index",1);
            return "user/addStudent";
        }catch (Exception e){
            System.out.println(e);
            model.addAttribute("error","已经存在该学生!");
            model.addAttribute("index",1);
            return "user/addStudent";
        }
    }
    /**
     * 修改学生信息
     *
     * 回显
     */
    @GetMapping("/editStudentInformation")
    public String editStudentInformation(Integer sid,Model model){
        Student student = studentService.queryStudentBysid(sid);
        model.addAttribute("student",student);
        model.addAttribute("index",1);
        return "user/editStudent";
    }
    @PostMapping("/editStudentInformation")
    public String editStudentInformation(Student form,Model model){
        try{
            studentService.updateStudentInformationBysid(form);
            System.out.println(form);
            model.addAttribute("msg","修改成功");
            model.addAttribute("index",1);
            return "user/editStudent";
        }catch (Exception e){
            model.addAttribute("msg",e);
            model.addAttribute("index",1);
            return "user/editStudent";
        }
    }
    /**
     * 删除学生信息
     */
    @GetMapping(value = "/deleteStudentInformation",params = "sid")
    public String deleteStudentInformation(Integer sid,Model model){
        System.out.println(sid);
        try{
            studentService.deleteStudentInformation(sid);
            model.addAttribute("msg","删除成功！");
            model.addAttribute("index",1);
        }catch (Exception e){
            model.addAttribute("error","删除错误");
            model.addAttribute("index",1);
        }
        return "forward:getAllStudentInformation";
    }
    @GetMapping(value = "/deleteStudentInformation",params = "array1")
    public String deleteStudentInformation(int[] array1,Model model){
        try {
            studentService.deleteStudentInformationByArray(array1);
            model.addAttribute("msg","删除成功！");
            model.addAttribute("index",1);
        } catch (Exception e) {
            model.addAttribute("msg","删除失败！");
            model.addAttribute("index",1);
            e.printStackTrace();
        }
        return "forward:getAllStudentInformation";
    }
    /**
     * 控制addUser页面的内容显示
     */
    @GetMapping(value = "/aboutInformation",params = "index")
    public String aboutInformation(int index,Model model){
        model.addAttribute("index",index);
        return "user/addStudent";
    }
}
