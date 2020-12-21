package com.wzz.important.repeat.controller;

import com.wzz.important.repeat.service.InrepeatService;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.NumberFormat;

@Controller
public class repeatController {
    @Autowired
    private InrepeatService inrepeatService;
    @RequestMapping("/hello")
    @ResponseBody
    public String hello(){
        return "hello";
    }

    @PostMapping("/repeat/submit")
    public String repeat(Model model,@RequestParam("file1") MultipartFile file1,@RequestParam("file2") MultipartFile file2) throws IOException {
        String text1 = FiletoString(file1);
        String text2 = FiletoString(file2);
        double result = design(text1,text2);
        NumberFormat nf = java.text.NumberFormat.getPercentInstance();
        nf.setMaximumIntegerDigits(2);//小数点前保留几位
        nf.setMinimumFractionDigits(2);// 小数点后保留几位
        String str = nf.format(result);
        model.addAttribute("result",str);
        return "user/form";
    }
    //MultipartFile 转为字符串
    public String  FiletoString(MultipartFile file) throws IOException {
        String path = "D:/test/";
        File file1 = new File(path+file.getOriginalFilename());
        FileUtils.copyInputStreamToFile(file.getInputStream(),file1);
        String varchar = FileUtils.readFileToString(file1);
        System.out.println(varchar);
        return varchar;
    }
    //算法
    /**
     * 相似度匹配算法
     * （据说）由俄国人Vladimir Levenshtein在1965年发明
     * 原理：返回将第一个字符串转换(删除、插入、替换)成第二个字符串的编辑次数。
     * 次数越少，意味着字符串相似度越高
     */
     public  double design(String Str_1,String Str_2){
            //length
            int Length1=Str_1.length();
            int Length2=Str_2.length();

            int Distance=0;
            if (Length1==0) {
                Distance=Length2;
            }
            if(Length2==0)
            {
                Distance=Length1;
            }
            if(Length1!=0&&Length2!=0){
                int[][] Distance_Matrix=new int[Length1+1][Length2+1];
                //编号
                int Bianhao=0;
                for (int i = 0; i <= Length1; i++) {
                    Distance_Matrix[i][0]=Bianhao;
                    Bianhao++;
                }
                Bianhao=0;
                for (int i = 0; i <=Length2; i++) {
                    Distance_Matrix[0][i]=Bianhao;
                    Bianhao++;
                }


                char[] Str_1_CharArray=Str_1.toCharArray();
                char[] Str_2_CharArray=Str_2.toCharArray();


                for (int i = 1; i <= Length1; i++) {
                    for(int j=1;j<=Length2;j++){
                        if(Str_1_CharArray[i-1]==Str_2_CharArray[j-1]){
                            Distance=0;
                        }
                        else{
                            Distance=1;
                        }

                        int Temp1=Distance_Matrix[i-1][j]+1;
                        int Temp2=Distance_Matrix[i][j-1]+1;
                        int Temp3=Distance_Matrix[i-1][j-1]+Distance;

                        Distance_Matrix[i][j]=Temp1>Temp2?Temp2:Temp1;
                        Distance_Matrix[i][j]=Distance_Matrix[i][j]>Temp3?Temp3:Distance_Matrix[i][j];

                    }

                }
                Distance=Distance_Matrix[Length1][Length2];
            }
            double Aerfa=1-1.0*Distance/(Length1>Length2?Length1:Length2);
            System.out.println(Aerfa);
            return Aerfa;
        }


}
