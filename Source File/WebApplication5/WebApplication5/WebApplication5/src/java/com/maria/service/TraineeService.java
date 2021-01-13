package com.maria.service;

import com.maria.dao.TrineeDAO;
import com.maria.model.Trainee;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TraineeService {

    @Autowired
    TrineeDAO traineeDAO;

    public Trainee save(HttpServletRequest request) {
        String name = request.getParameter("name");
        String salary = request.getParameter("salary");
        String city = request.getParameter("city");

        Trainee trainee = new Trainee();
        trainee.setName(name);
        trainee.setSalary(salary);
        trainee.setCity(city);
        return traineeDAO.save(trainee);
    }

    public Trainee update(HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String salary = request.getParameter("salary");
        String city = request.getParameter("city");

        Trainee trainee = new Trainee();
        trainee.setId(id);
        trainee.setName(name);
        trainee.setSalary(salary);
        trainee.setCity(city);
        return traineeDAO.update(trainee);
    }

    public Trainee delete(int id) {
        return traineeDAO.delete(id);
    }

    public Trainee getById(int id) {
        return traineeDAO.getById(id);
    }

    public List<Trainee> getAll() {
        List<Trainee> traineeList = traineeDAO.getAll();
        return traineeList;
    }
}













