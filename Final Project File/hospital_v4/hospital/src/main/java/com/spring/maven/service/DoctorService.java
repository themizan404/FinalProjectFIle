/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.service;

import com.spring.maven.dao.impl.IDoctorDAO;
import com.spring.maven.model.Doctor;
import com.spring.maven.service.impl.IDoctorService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author mohdm
 */
@Service
public class DoctorService implements IDoctorService {

    @Autowired
    IDoctorDAO doctorDAO;

    @Override
    public Doctor save(HttpServletRequest request) {
        int doctor_nid = Integer.parseInt(request.getParameter("doctor_nid"));
        String doctor_name = request.getParameter("doctor_name");
        String doctor_degree = request.getParameter("doctor_degree");
        String doctor_specialist = request.getParameter("doctor_specialist");
        String doctor_designation = request.getParameter("doctor_designation");
        String doctor_department = request.getParameter("doctor_department");
        String doctor_registerId = request.getParameter("doctor_registerId");
        String doctor_password = request.getParameter("doctor_password");

        String hospital_number = request.getParameter("hospital_number");
        String hospital_name = request.getParameter("hospital_name");
        String hospital_type = request.getParameter("hospital_type");
        String hospital_location = request.getParameter("hospital_location");

        Doctor doctor = new Doctor();

        doctor.setDoctor_nid(doctor_nid);
        doctor.setDoctor_name(doctor_name);
        doctor.setDoctor_degree(doctor_degree);
        doctor.setDoctor_specialist(doctor_specialist);
        doctor.setDoctor_designation(doctor_designation);
        doctor.setDoctor_department(doctor_department);
        doctor.setDoctor_registerId(doctor_registerId);
        doctor.setDoctor_password(doctor_password);

        doctor.setHospital_number(hospital_number);
        doctor.setHospital_name(hospital_name);
        doctor.setHospital_type(hospital_type);
        doctor.setHospital_location(hospital_location);

        return doctorDAO.save(doctor);
    }

    @Override
    public Doctor update(HttpServletRequest request) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Doctor delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Doctor> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Doctor getById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
