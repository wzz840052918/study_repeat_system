package com.wzz.seccond.student.service;

import com.wzz.bean.Student;

import java.sql.SQLException;
import java.util.List;

public interface InStudentService {

    List<Student> getAllStudentInformation();

    void addStudent(Student form) throws Exception;

    Student queryStudentBysid(Integer sid);

    void updateStudentInformationBysid(Student form) throws Exception;

    void deleteStudentInformation(Integer sid) throws Exception;

    void deleteStudentInformationByArray(int[] array1) throws Exception;

    void addStudentToPersonal(Student form) throws Exception;
}
