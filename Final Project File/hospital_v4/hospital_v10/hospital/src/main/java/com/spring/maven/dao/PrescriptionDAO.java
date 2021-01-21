/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.dao;

import com.spring.maven.dao.impl.IPrescriptionDAO;
import com.spring.maven.model.Prescription;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author B8
 */
@Repository
@Transactional
public class PrescriptionDAO implements IPrescriptionDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Prescription save(Prescription t) {
        sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Prescription update(Prescription t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Prescription delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Prescription> getAll() {

        List<Prescription> prescriptions = sessionFactory.getCurrentSession().createCriteria(Prescription.class).list();
        sessionFactory.getCurrentSession().flush();
        return prescriptions;
    }

    @Override
    public Prescription getById(int id) {
        Prescription prescription = (Prescription) sessionFactory.getCurrentSession().get(Prescription.class, id);
        sessionFactory.getCurrentSession().flush();
        return prescription;
    }

    @Override
    public Prescription getByNid(int patient_nid) {
        Prescription prescription = (Prescription) sessionFactory.getCurrentSession().get(Prescription.class, patient_nid);
        sessionFactory.getCurrentSession().flush();
        return prescription;
    }

    @Override
    public Prescription getPrescriptionData(int patient_nid) {

        String hqlQuery = "from Prescription where patient_nid =: patient_nid";
        Query query = sessionFactory.getCurrentSession().createQuery(hqlQuery);
        query.setParameter("patient_nid", patient_nid);
        Prescription prescription = (Prescription) query.list();
        sessionFactory.getCurrentSession().flush();
        return prescription;

    }

}
