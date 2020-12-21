package com.wzz.seccond.t_class.controller;

import com.wzz.bean.PublicClass;
import com.wzz.bean.T_class;
import com.wzz.seccond.t_class.service.InclassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/tclass")
public class classController {
    @Autowired
    private InclassService inclassService;

    /**
     * 获取所有信息 来展示
     * @param request
     * @return
     */
    @GetMapping("/getAllTclassInformation")
    public String getAllTclassInformation(HttpServletRequest request){
        try{
            List<PublicClass> classList = inclassService.getAllTclassInformation();
            System.out.println(classList);
            request.setAttribute("classList",classList);
            return "user/index3";
        }catch (Exception e){
            request.setAttribute("msg",e);
            return "user/index3";
        }

    }
    /**
     * 获取前端提交的表单  以Publicclass形式提交
     * 添加数据
     */
    @PostMapping("/addPublicInformation")
    public String addPublicInformation(PublicClass publicClass, Model model){
        try{
            inclassService.addPublicInformation(publicClass);
            model.addAttribute("msg","添加成功!");
            //返回一个 index =3 到addStudent，来弹出模态框，再跳转到相应页面
            model.addAttribute("index",3);
            return "user/addStudent";
        }catch (Exception e){
            model.addAttribute("msg","添加失败！错误原因：？"+e);
            model.addAttribute("index",3);
            return "user/addStudent";
        }

    }
    /**
     * 删除
     */
    @GetMapping(value = "/deletePublicInformation",params = "cid")
    public String deletePublicInformation(String cid,Model model){
        try{
            inclassService.deletePublicInformation(cid);
            model.addAttribute("msg","删除成功!");
            return "forward:getAllTclassInformation";
        }catch (Exception e){
            System.out.println("删除失败");
            return "forward:getAllTclassInformation";
        }
    }
    /**
     * 修改
     */
    @GetMapping(value = "/editPublicInformation",params = "cid")
    public String editPublicInformation(String cid,Model model){
        try{
            //根据cid查询，
            PublicClass publicClass = inclassService.queryByCid(cid);
            //回显到editStudent.jsp页面，然后进行修改
            return "user/editStudent";
        }catch (Exception e){
            System.out.println("错误信息为:"+e);
            model.addAttribute("msg","错误信息为:"+e);
            return "user/editStudent";
        }
    }
    @PostMapping("/editPublicInformation")
    public String editPublicInformation(PublicClass publicClass,Model model){
        try{
            //update
            inclassService.updateByCid(publicClass);
            model.addAttribute("index",3);
            return "user/editStudent";
        }catch (Exception e){
            System.out.println("错误信息为:"+e);
            model.addAttribute("error","错误信息为："+e);
            return "user/editStudent";
        }
    }
}
