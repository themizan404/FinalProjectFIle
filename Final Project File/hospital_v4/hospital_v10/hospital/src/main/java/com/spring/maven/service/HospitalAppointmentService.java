/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.service;

import com.spring.maven.dao.impl.IHospitalAppointmentDAO;
import com.spring.maven.model.HospitalAppointment;
import com.spring.maven.service.impl.IHospitalAppointmentService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author mohdm
 */
@Service
public class HospitalAppointmentService implements IHospitalAppointmentService {

    @Autowired
    IHospitalAppointmentDAO hospitalAppointmentDAO;

    @Override

    public HospitalAppointment save(HttpServletRequest request) {
        int patient_nid = Integer.parseInt(request.getParameter("patient_nid"));
        String patient_name = request.getParameter("patient_name");
        String patient_gender = request.getParameter("patient_gender");
        String patient_age = request.getParameter("patient_age");
        String patient_address = request.getParameter("patientAddress");
        String patient_problem = request.getParameter("patient_problem");
        HospitalAppointment hospitalAppointment = new HospitalAppointment();

        hospitalAppointment.setPatient_nid(patient_nid);
        hospitalAppointment.setPatient_name(patient_name);
        hospitalAppointment.setPatient_gender(patient_gender);
        hospitalAppointment.setPatient_age(patient_age);
        hospitalAppointment.setPatient_address(patient_address);
        hospitalAppointment.setPatient_problem(patient_problem);
        return hospitalAppointmentDAO.save(hospitalAppointment);
    }

    @Override
    public HospitalAppointment update(HttpServletRequest request) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public HospitalAppointment delete(int id) {
        return hospitalAppointmentDAO.delete(id);
    }

    @Override
    public List<HospitalAppointment> getAll() {
        return hospitalAppointmentDAO.getAll();
    }

    @Override
    public HospitalAppointment getById(int id) {
        return hospitalAppointmentDAO.getById(id);

    }

    @Override
    public HospitalAppointment getByNid(int patient_nid) {
        return hospitalAppointmentDAO.getByNid(patient_nid);
    }

}
