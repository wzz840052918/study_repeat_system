package com.wzz.seccond.student.service;

import com.wzz.bean.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wzz.seccond.student.dao.InStudentDao;

import java.sql.SQLException;
import java.util.List;

@Service
public class ImpStudentService implements InStudentService {
    @Autowired
    private InStudentDao studentDao;

    @Override
    public List<Student> getAllStudentInformation() {
        return studentDao.getAllStudentInformation();
    }

    @Override
    public void addStudent(Student form) throws Exception {
        try{
            studentDao.addStudent(form);
        }catch (Exception e){
            throw new Exception("错误信息为：插入失败，可能已经存在该学生！");
        }
    }

    @Override
    public void addStudentToPersonal(Student form) throws Exception {
        try{
            studentDao.addStudentToPersonal(form);
        }catch (Exception e){
            throw new Exception("错误信息为：插入失败，可能已经存在该学生！");
        }
    }

    @Override
    public Student queryStudentBysid(Integer sid) {
        return studentDao.queryStudentBysid(sid);
    }

    @Override
    public void updateStudentInformationBysid(Student form) throws Exception {
        try{
            studentDao.updateStudentInformationBysid(form);
        }catch (Exception e){
            throw new Exception("错误信息为：更新失败！详情请自己想......");
        }
    }

    @Override
    public void deleteStudentInformation(Integer sid) throws Exception {
        try {
            studentDao.deleteStudentInformation(sid);
        }catch (Exception e){
            throw new Exception("错误信息为：删除失败:"+e);
        }
    }

    @Override
    public void deleteStudentInformationByArray(int[] array1) throws Exception {
        try{
            studentDao.deleteStudentInformationByArray(array1);
        }catch (Exception e){
            throw new Exception("错误信息为：删除失败:"+e);
        }
    }

}
