/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.dao;

import com.spring.maven.dao.impl.IAdminDAO;
import com.spring.maven.model.Admin;
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
public class AdminDAO implements IAdminDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Admin save(Admin t) {
        sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Admin update(Admin t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Admin delete(int id) {
        Admin admin = (Admin) sessionFactory.getCurrentSession().load(Admin.class, id);
        sessionFactory.getCurrentSession().delete(admin);
        sessionFactory.getCurrentSession().flush();
        return admin;
    }

    @Override
    public List<Admin> getAll() {
        List<Admin> admins = sessionFactory.getCurrentSession().createCriteria(Admin.class).list();
        sessionFactory.getCurrentSession().flush();
        return admins;

    }

    @Override
    public Admin getById(int id) {
        Admin admin = (Admin) sessionFactory.getCurrentSession().get(Admin.class, id);
        sessionFactory.getCurrentSession().flush();
        return admin;

    }

}
