/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.service;

import com.spring.maven.dao.impl.IStaffDAO;
import com.spring.maven.model.Staff;
import com.spring.maven.service.impl.IStaffService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author B8
 */
@Service
public class StaffService implements IStaffService {

    @Autowired
    IStaffDAO staffDAO;

    @Override
    public Staff save(HttpServletRequest request) {
        String staff_name = request.getParameter("staff_name");
        String staff_role = request.getParameter("staff_role");
        String staff_password = request.getParameter("staff_password");
        String hospital_number = request.getParameter("hospital_number");
        String hospital_name = request.getParameter("hospital_name");
        String hospital_type = request.getParameter("hospital_type");
        String hospital_location = request.getParameter("hospital_location");

        Staff staff = new Staff();
        staff.setStaff_name(staff_name);
        staff.setStaff_role(staff_role);
        staff.setStaff_password(staff_password);
        staff.setHospital_number(hospital_number);
        staff.setHospital_name(hospital_name);
        staff.setHospital_type(hospital_type);
        staff.setHospital_location(hospital_location);

        return staffDAO.save(staff);
    }

    @Override
    public Staff update(HttpServletRequest request) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Staff delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Staff> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Staff getById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
