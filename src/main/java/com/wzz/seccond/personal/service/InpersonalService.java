package com.wzz.seccond.personal.service;

import com.wzz.bean.Lesson;
import com.wzz.bean.Personal;
import org.springframework.ui.Model;

import java.util.List;

public interface InpersonalService {
    List<Personal> getAllPersonalInformation() throws Exception;

    List<Lesson> getAllLesson();

    void toAddScore(Personal form);

    boolean equalBySidAndLname(Personal form);

    void delete(Integer sid) throws Exception;

    Personal queryBySid(Integer sid);

    void edit(Personal personal);
}
