package com.maria.dao;

import com.maria.model.Trainee;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class TrineeDAO {

    @Autowired
    SessionFactory sessionFactory;

    public Trainee save(Trainee trainee) {
        sessionFactory.getCurrentSession().save(trainee);
        sessionFactory.getCurrentSession().flush();
        return trainee;
    }

    public Trainee update(Trainee trainee) {
        sessionFactory.getCurrentSession().saveOrUpdate(trainee);
        sessionFactory.getCurrentSession().flush();
        return trainee;
    }

    public Trainee delete(int id) {
        Trainee trainee = (Trainee) sessionFactory.getCurrentSession().load(Trainee.class, id);
        sessionFactory.getCurrentSession().delete(trainee);
        sessionFactory.getCurrentSession().flush();
        return trainee;
    }

    public Trainee getById(int id) {
        Trainee trainee = (Trainee) sessionFactory.getCurrentSession().get(Trainee.class, id);
        sessionFactory.getCurrentSession().flush();
        return trainee;
    }

    public List<Trainee> getAll() {
        List<Trainee> trainee = sessionFactory.getCurrentSession().createCriteria(Trainee.class).list();
        sessionFactory.getCurrentSession().flush();
        return trainee;
    }
}













