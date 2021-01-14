/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spr.mav.dao;

import com.spr.mav.dao.impl.IPatientDAO;
import com.spr.mav.model.Patient;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author mohdm
 */
@Repository
@Transactional
public class PatientDAO implements IPatientDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Patient save(Patient t) {
        sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Patient update(Patient t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Patient delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Patient> getAll() {
        List<Patient> patients = sessionFactory.getCurrentSession().createCriteria(Patient.class).list();
        sessionFactory.getCurrentSession().flush();
        return patients;
    }

    @Override
    public Patient getById(int id) {

        Patient patient = (Patient) sessionFactory.getCurrentSession().get(Patient.class, id);
        sessionFactory.getCurrentSession().flush();
        return patient;
    }

    @Override
    public Patient getByNid(int patient_nid) {
        Patient patient = (Patient) sessionFactory.getCurrentSession().get(Patient.class, patient_nid);
        sessionFactory.getCurrentSession().flush();
        return patient;
    }

}
