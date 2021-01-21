/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.dao;

import com.spring.maven.dao.impl.IOnlineAppointmentDAO;
import com.spring.maven.model.OnlineAppointment;
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
public class OnlineAppointmentDAO implements IOnlineAppointmentDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public OnlineAppointment save(OnlineAppointment t) {
        sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public OnlineAppointment update(OnlineAppointment t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public OnlineAppointment delete(int id) {
        OnlineAppointment onlineAppointment = (OnlineAppointment) sessionFactory.getCurrentSession().load(OnlineAppointment.class, id);
        sessionFactory.getCurrentSession().flush();
        return onlineAppointment;
    }

    @Override
    public List<OnlineAppointment> getAll() {
        List<OnlineAppointment> appointments = sessionFactory.getCurrentSession().createCriteria(OnlineAppointment.class).list();

        sessionFactory.getCurrentSession().flush();
        return appointments;
    }

    @Override
    public OnlineAppointment getById(int id) {
        OnlineAppointment appointment = (OnlineAppointment) sessionFactory.getCurrentSession().get(OnlineAppointment.class, id);
        sessionFactory.getCurrentSession().flush();
        return appointment;
    }

    @Override
    public OnlineAppointment getByNid(int patient_nid) {
        OnlineAppointment appointment = (OnlineAppointment) sessionFactory.getCurrentSession().get(OnlineAppointment.class, patient_nid);
        sessionFactory.getCurrentSession().flush();
        return appointment;
    }

}
