/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.dao;

import com.spring.maven.dao.impl.IHospitalAppointmentDAO;
import com.spring.maven.model.HospitalAppointment;
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

public class HospitalAppointmentDAO implements IHospitalAppointmentDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public HospitalAppointment save(HospitalAppointment t) {
        sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public HospitalAppointment update(HospitalAppointment t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public HospitalAppointment delete(int id) {
        HospitalAppointment hospitalAppointment = (HospitalAppointment) sessionFactory.getCurrentSession().load(HospitalAppointment.class, id);
        sessionFactory.getCurrentSession().flush();
        return hospitalAppointment;
    }

    @Override
    public List<HospitalAppointment> getAll() {
        List<HospitalAppointment> hospitalAppointments = sessionFactory.getCurrentSession().createCriteria(HospitalAppointment.class).list();
        sessionFactory.getCurrentSession().flush();
        return hospitalAppointments;
    }

    @Override
    public HospitalAppointment getById(int id) {
        HospitalAppointment appointment = (HospitalAppointment) sessionFactory.getCurrentSession().get(HospitalAppointment.class, id);
        sessionFactory.getCurrentSession().flush();
        return appointment;
    }

    @Override
    public HospitalAppointment getByNid(int patient_nid) {
        HospitalAppointment appointment = (HospitalAppointment) sessionFactory.getCurrentSession().get(HospitalAppointment.class, patient_nid);
        sessionFactory.getCurrentSession().flush();
        return appointment;
    }

}
