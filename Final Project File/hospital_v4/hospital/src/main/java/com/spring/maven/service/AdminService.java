/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.service;

import com.spring.maven.dao.impl.IAdminDAO;
import com.spring.maven.model.Admin;
import com.spring.maven.service.impl.IAdminService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author mohdm
 */
@Service
public class AdminService implements IAdminService {

    @Autowired
    IAdminDAO adminDAO;

    @Override
    public Admin save(HttpServletRequest request) {
        int admin_nid = Integer.parseInt(request.getParameter("admin_nid"));
        String admin_name = request.getParameter("admin_name");
        String admin_role = request.getParameter("admin_role");
        String admin_password = request.getParameter("admin_password");
        String hospital_number = request.getParameter("hospital_number");
        String hospital_name = request.getParameter("hospital_name");
        String hospital_type = request.getParameter("hospital_type");
        String hospital_location = request.getParameter("hospital_location");
        Admin admin = new Admin();
        admin.setAdmin_nid(admin_nid);
        admin.setAdmin_name(admin_name);
        admin.setAdmin_role(admin_role);
        admin.setAdmin_password(admin_password);
        admin.setHospital_number(hospital_number);
        admin.setHospital_name(hospital_name);
        admin.setHospital_type(hospital_type);
        admin.setHospital_location(hospital_location);
        return adminDAO.save(admin);
    }

    @Override
    public Admin update(HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        int admin_nid = Integer.parseInt(request.getParameter("admin_nid"));
        String admin_name = request.getParameter("admin_name");
        String admin_role = request.getParameter("admin_role");
        String admin_password = request.getParameter("admin_password");
        String hospital_number = request.getParameter("hospital_number");
        String hospital_name = request.getParameter("hospital_name");
        String hospital_type = request.getParameter("hospital_type");
        String hospital_location = request.getParameter("hospital_location");
        Admin admin = new Admin();
        admin.setId(id);
        admin.setAdmin_nid(admin_nid);
        admin.setAdmin_name(admin_name);
        admin.setAdmin_role(admin_role);
        admin.setAdmin_password(admin_password);
        admin.setHospital_number(hospital_number);
        admin.setHospital_name(hospital_name);
        admin.setHospital_type(hospital_type);
        admin.setHospital_location(hospital_location);
        return adminDAO.save(admin);
    }

    @Override
    public Admin delete(int id) {
        return adminDAO.delete(id);
    }

    @Override
    public List<Admin> getAll() {
        List<Admin> admins = adminDAO.getAll();
        return admins;
    }

    @Override
    public Admin getById(int id) {
        return adminDAO.getById(id);
    }

}
