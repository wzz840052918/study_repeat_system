package com.wzz.important.repeat.service;

import com.wzz.important.repeat.dao.InrepeatDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ImprepeatService implements InrepeatService{
    @Autowired
    private InrepeatDao inrepeatDao;
}
