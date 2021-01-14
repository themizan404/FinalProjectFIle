/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.service;

import com.spring.maven.dao.impl.IOnlineAppointmentDAO;
import com.spring.maven.model.OnlineAppointment;
import com.spring.maven.service.impl.IOnlineAppointmentService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author mohdm
 */
@Service
public class OnlineAppointmentService implements IOnlineAppointmentService {

    @Autowired
    IOnlineAppointmentDAO onlineAppointmentDAO;

    @Override
    public OnlineAppointment save(HttpServletRequest request) {
        int patient_nid = Integer.parseInt(request.getParameter("patientNid"));
        String patient_problem = request.getParameter("patientProblem");
        String appiontmentDate = request.getParameter("appointment_Date");

        OnlineAppointment onlineAppointment = new OnlineAppointment();

        onlineAppointment.setPatient_nid(patient_nid);
        onlineAppointment.setPatient_problem(patient_problem);
        onlineAppointment.setAppointmentDate(appiontmentDate);
        return onlineAppointmentDAO.save(onlineAppointment);
    }

    @Override
    public OnlineAppointment update(HttpServletRequest request) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.

    }

    @Override

    public OnlineAppointment delete(int id) {
        return onlineAppointmentDAO.delete(id);
    }

    @Override
    public List<OnlineAppointment> getAll() {
        return onlineAppointmentDAO.getAll();
    }

    @Override
    public OnlineAppointment getById(int id) {
        return onlineAppointmentDAO.getById(id);
    }

    @Override
    public OnlineAppointment getByNid(int patient_nid) {
        return onlineAppointmentDAO.getByNid(patient_nid);
    }

}
