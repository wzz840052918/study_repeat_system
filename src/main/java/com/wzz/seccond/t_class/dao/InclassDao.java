package com.wzz.seccond.t_class.dao;

import com.wzz.bean.PublicClass;
import com.wzz.bean.T_class;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface InclassDao {

    List<PublicClass> getAllTclassInformation();

    void addPublicInformation(PublicClass publicClass);

    int selectCount(String sclass);

    void deletePublicInformation(String cid);

    PublicClass queryByCid(String cid);

    void updateByCid(PublicClass publicClass);
}
