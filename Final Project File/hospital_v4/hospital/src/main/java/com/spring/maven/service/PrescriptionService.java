/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.service;

import com.spring.maven.dao.impl.IPrescriptionDAO;
import com.spring.maven.model.Prescription;
import com.spring.maven.service.impl.IPrescriptionService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author B8
 */
@Service
public class PrescriptionService implements IPrescriptionService {

    @Autowired
    IPrescriptionDAO prescriptionDAO;

    @Override
    public Prescription save(HttpServletRequest request) {
        int patient_nid = Integer.parseInt(request.getParameter("patient_nid"));
        String patient_name = request.getParameter("patient_name");
        String patient_age = request.getParameter("patient_age");
        String patient_gender = request.getParameter("patient_gender");
        String patient_address = request.getParameter("patient_address");
        String temperature = request.getParameter("temperature");
        String weight = request.getParameter("weight");
        String blood_pressure = request.getParameter("blood_pressure");
        String date = request.getParameter("date");

        String symptom1 = request.getParameter("symptom1");
        String symptom2 = request.getParameter("symptom2");
        String symptom3 = request.getParameter("symptom3");
        String symptom4 = request.getParameter("symptom4");
        String symptom5 = request.getParameter("symptom5");

        String symptom_duration1 = request.getParameter("symptom_duration1");
        String symptom_duration2 = request.getParameter("symptom_duration2");
        String symptom_duration3 = request.getParameter("symptom_duration3");
        String symptom_duration4 = request.getParameter("symptom_duration4");
        String symptom_duration5 = request.getParameter("symptom_duration5");

        String medicine1 = request.getParameter("medicine1");
        String medicine2 = request.getParameter("medicine2");
        String medicine3 = request.getParameter("medicine3");
        String medicine4 = request.getParameter("medicine4");
        String medicine5 = request.getParameter("medicine5");

        String medicine_dose1 = request.getParameter("medicine_dose1");
        String medicine_dose2 = request.getParameter("medicine_dose2");
        String medicine_dose3 = request.getParameter("medicine_dose3");
        String medicine_dose4 = request.getParameter("medicine_dose4");
        String medicine_dose5 = request.getParameter("medicine_dose5");

        String medicine_duration1 = request.getParameter("medicine_duration1");
        String medicine_duration2 = request.getParameter("medicine_duration2");
        String medicine_duration3 = request.getParameter("medicine_duration3");
        String medicine_duration4 = request.getParameter("medicine_duration4");
        String medicine_duration5 = request.getParameter("medicine_duration5");

        String test1 = request.getParameter("test1");
        String test2 = request.getParameter("test2");
        String test3 = request.getParameter("test3");
        String test4 = request.getParameter("test4");
        String test5 = request.getParameter("test5");

        Prescription prescription = new Prescription();

        prescription.setPatient_nid(patient_nid);
        prescription.setPatient_name(patient_name);
        prescription.setPatient_age(patient_age);
        prescription.setPatient_gender(patient_gender);
        prescription.setPatient_address(patient_address);
        prescription.setTemperature(temperature);
        prescription.setWeight(weight);
        prescription.setBlood_pressure(blood_pressure);
        prescription.setDate(date);

        prescription.setSymptom1(symptom1);
        prescription.setSymptom2(symptom2);
        prescription.setSymptom3(symptom3);
        prescription.setSymptom4(symptom4);
        prescription.setSymptom5(symptom5);

        prescription.setSymptom_duration1(symptom_duration1);
        prescription.setSymptom_duration2(symptom_duration2);
        prescription.setSymptom_duration3(symptom_duration3);
        prescription.setSymptom_duration4(symptom_duration4);
        prescription.setSymptom_duration5(symptom_duration5);

        prescription.setMedicine1(medicine1);
        prescription.setMedicine2(medicine2);
        prescription.setMedicine3(medicine3);
        prescription.setMedicine4(medicine4);
        prescription.setMedicine5(medicine5);

        prescription.setMedicine_dose1(medicine_dose1);
        prescription.setMedicine_dose2(medicine_dose2);
        prescription.setMedicine_dose3(medicine_dose3);
        prescription.setMedicine_dose4(medicine_dose4);
        prescription.setMedicine_dose5(medicine_dose5);

        prescription.setMedicine_duration1(medicine_duration1);
        prescription.setMedicine_duration2(medicine_duration2);
        prescription.setMedicine_duration3(medicine_duration3);
        prescription.setMedicine_duration4(medicine_duration4);
        prescription.setMedicine_duration5(medicine_duration5);

        prescription.setTest1(test1);
        prescription.setTest2(test2);
        prescription.setTest3(test3);
        prescription.setTest4(test4);
        prescription.setTest5(test5);
        
        return prescriptionDAO.save(prescription); 
    }

    @Override
    public Prescription update(HttpServletRequest request) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Prescription delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Prescription> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Prescription getById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
