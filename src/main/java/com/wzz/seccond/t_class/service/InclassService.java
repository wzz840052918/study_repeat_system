package com.wzz.seccond.t_class.service;

import com.wzz.bean.PublicClass;
import com.wzz.bean.T_class;

import java.util.List;

public interface InclassService {
    List<PublicClass> getAllTclassInformation() throws Exception;

    void addPublicInformation(PublicClass publicClass) throws Exception;

    void deletePublicInformation(String cid);

    PublicClass queryByCid(String cid);

    void updateByCid(PublicClass publicClass) throws Exception;
}
