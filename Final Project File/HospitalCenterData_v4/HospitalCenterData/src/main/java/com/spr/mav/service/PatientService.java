/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spr.mav.service;

import com.spr.mav.dao.impl.IPatientDAO;
import com.spr.mav.model.Patient;
import com.spr.mav.service.impl.IPatientService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author mohdm
 */
@Service
public class PatientService implements IPatientService {

    @Autowired
    IPatientDAO patientDAO;

    @Override

    public Patient save(HttpServletRequest request) {
        int patient_nid = Integer.parseInt(request.getParameter("patient_nid"));
        String patient_name = request.getParameter("patient_name");
        String patient_gender = request.getParameter("patient_gender");
        String patient_age = request.getParameter("patient_age");
        String patient_address = request.getParameter("patient_address");

        Patient patient = new Patient();
        patient.setPatient_nid(patient_nid);
        patient.setPatient_name(patient_name);
        patient.setPatient_gender(patient_gender);
        patient.setPatient_age(patient_age);
        patient.setPatient_address(patient_address);

        return patientDAO.save(patient);
    }

    @Override
    public Patient update(HttpServletRequest request) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Patient delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Patient> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Patient getById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
