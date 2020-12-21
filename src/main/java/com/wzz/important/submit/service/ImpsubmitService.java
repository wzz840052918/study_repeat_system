package com.wzz.important.submit.service;

import com.wzz.important.submit.dao.InsubmitDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ImpsubmitService implements InsubmitService {

    @Autowired
    private InsubmitDao dao;
}
