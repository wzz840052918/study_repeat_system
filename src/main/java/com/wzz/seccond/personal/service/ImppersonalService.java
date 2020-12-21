package com.wzz.seccond.personal.service;

import com.wzz.bean.Lesson;
import com.wzz.bean.Personal;
import com.wzz.seccond.personal.dao.InpersonalDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import java.util.List;

@Service
public class ImppersonalService implements InpersonalService {
    @Autowired
    private InpersonalDao inpersonalDao;

    @Override
    public List<Personal> getAllPersonalInformation() throws Exception {
        try{
            return inpersonalDao.getAllPersonalInformation();
        }catch (Exception e){
            throw new Exception("错误信息为："+e);
        }

    }

    @Override
    public List<Lesson> getAllLesson() {
        return inpersonalDao.getAllLesson();
    }

    @Override
    public void toAddScore(Personal form) {
        inpersonalDao.toAddScore(form);
    }

    @Override
    public boolean equalBySidAndLname(Personal form) {
        if(inpersonalDao.equalBySidAndLname(form)!=null){
            return true;
        }else{
            return false;
        }
    }

    @Override
    public void delete(Integer sid) throws Exception {
        try{
            inpersonalDao.delete(sid);
        }catch (Exception e){
            throw new Exception("删除失败"+e);
        }
    }

    @Override
    public Personal queryBySid(Integer sid) {
        return inpersonalDao.queryBySid(sid);
    }

    @Override
    public void edit(Personal personal) {
        inpersonalDao.edit(personal);
    }
}
