/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.service;

import com.spring.maven.dao.impl.IMedicineDAO;
import com.spring.maven.model.Medicine;
import com.spring.maven.service.impl.IMedicineService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author mohdm
 */
@Service
public class MedicineService implements IMedicineService {

    @Autowired
    IMedicineDAO medicineDAO;

    @Override
    public Medicine save(HttpServletRequest request) {
//        int id = Integer.parseInt(request.getParameter("id"));
        String medicine_name = request.getParameter("medicine_name");
        String generic_group = request.getParameter("generic_group");

        Medicine medicine = new Medicine();
       
        medicine.setMedicine_name(medicine_name);
        medicine.setGeneric_group(generic_group);
        return medicineDAO.save(medicine);
    }

    @Override
    public Medicine update(HttpServletRequest request) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Medicine delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Medicine> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Medicine getById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
