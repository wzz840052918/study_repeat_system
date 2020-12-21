package com.wzz.seccond.t_class.service;

import com.wzz.bean.PublicClass;
import com.wzz.bean.T_class;
import com.wzz.seccond.t_class.dao.InclassDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ImpclassService implements InclassService {
    @Autowired
    private InclassDao inclassDao;
    @Override
    public List<PublicClass> getAllTclassInformation() throws Exception {
        try{
            return inclassDao.getAllTclassInformation();
        }catch (Exception e){
            throw new Exception("获取信息错误！");
        }
    }

    /**填充信息
     *
     * @param publicClass
     * @throws Exception
     */
    public PublicClass tianchong(PublicClass publicClass) throws Exception {
        if(publicClass.getCid()==1801){
            publicClass.setSclass("18Java1班");
        }else if(publicClass.getCid()==1802){
            publicClass.setSclass("18Java2班");
        }else if(publicClass.getCid()==1803){
            publicClass.setSclass("18Java3班");
        }else if(publicClass.getCid()==1804){
            System.out.println("cid=1804");
            publicClass.setSclass("18Java4班");
        }
        //计算一下 这个班有多少人
        //从student表中，查询人数 where sclass = 几班
        int count = 0;
        try{
            System.out.println(publicClass.getSclass());
            count = inclassDao.selectCount(publicClass.getSclass());
            if(count==0){
                throw new Exception("这个班级没有人？");
            }
        }catch (Exception e){
            throw new Exception("数据库查询人数错误:"+e);
        }

        //查询出来人数之后进行t_class剩余数据的填充
        double ave_daily_score = publicClass.getSub_daily_score()/count;
        double ave_last_score = publicClass.getSub_last_score()/count;
        double ave_all_score = publicClass.getSub_all_score()/count;
        publicClass.setAve_daily_score(ave_daily_score);
        publicClass.setAve_last_score(ave_last_score);
        publicClass.setAve_all_score(ave_all_score);
        return publicClass;
    }

    @Override
    public void addPublicInformation(PublicClass publicClass) throws Exception {
        inclassDao.addPublicInformation(tianchong(publicClass));
    }

    @Override
    public void deletePublicInformation(String cid) {
        inclassDao.deletePublicInformation(cid);
    }

    @Override
    public PublicClass queryByCid(String cid) {
        return inclassDao.queryByCid(cid);
    }

    @Override
    public void updateByCid(PublicClass publicClass) throws Exception {
        inclassDao.updateByCid(tianchong(publicClass));
    }
}
