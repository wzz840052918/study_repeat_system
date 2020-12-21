package com.wzz.seccond.student.dao;

import com.wzz.bean.Student;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface InStudentDao {
    List<Student> getAllStudentInformation();

    int addStudent(Student form);

    Student queryStudentBysid(Integer sid);

    void updateStudentInformationBysid(Student form);

    void deleteStudentInformation(Integer sid);

    void deleteStudentInformationByArray(int[] array1);

    void addStudentToPersonal(Student form);
}
