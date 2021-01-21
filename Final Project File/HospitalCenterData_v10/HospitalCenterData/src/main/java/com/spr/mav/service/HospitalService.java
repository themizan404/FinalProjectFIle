/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spr.mav.service;

import com.spr.mav.dao.impl.IHospitalDAO;
import com.spr.mav.model.Hospital;
import com.spr.mav.service.impl.IHospitalService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author mohdm
 */
@Service
public class HospitalService implements IHospitalService {

    @Autowired
    IHospitalDAO hospitalDAO;

    @Override
    public Hospital save(HttpServletRequest request) {
        int hospital_number = Integer.parseInt(request.getParameter("hospital_number"));
        String hospital_name = request.getParameter("hospital_name");
        String hospital_type = request.getParameter("hospital_type");
        String hospital_location = request.getParameter("hospital_location");

        Hospital hospital = new Hospital();
        hospital.setHospital_number(hospital_number);
        hospital.setHospital_name(hospital_name);
        hospital.setHospital_type(hospital_type);
        hospital.setHospital_location(hospital_location);
        return hospitalDAO.save(hospital);
    }

    @Override
    public Hospital update(HttpServletRequest request) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Hospital delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Hospital> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Hospital getById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
