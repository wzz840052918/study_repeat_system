package com.wzz.seccond.personal.dao;

import com.wzz.bean.Lesson;
import com.wzz.bean.Personal;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface InpersonalDao {
    public List<Personal> getAllPersonalInformation();

    List<Lesson> getAllLesson();

    void toAddScore(Personal form);

    Personal equalBySidAndLname(Personal form);

    void delete(Integer sid);

    Personal queryBySid(Integer sid);

    void edit(Personal personal);
}
