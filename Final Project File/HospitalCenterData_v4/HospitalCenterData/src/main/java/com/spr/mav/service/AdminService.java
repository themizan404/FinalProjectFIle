/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spr.mav.service;

import com.spr.mav.dao.impl.IAdminDAO;
import com.spr.mav.model.Admin;
import com.spr.mav.service.impl.IAdminService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author B8
 */
@Service
public class AdminService implements IAdminService {

    @Autowired
    IAdminDAO adminDAO;

    @Override
    public Admin save(HttpServletRequest request) {
        int nid = Integer.parseInt(request.getParameter("admin_nid"));
        String admin_name = request.getParameter("admin_name");
        String admin_password = request.getParameter("admin_password");

        Admin admin = new Admin();
        admin.setAdmin_nid(nid);
        admin.setAdmin_name(admin_name);
        admin.setAdmin_password(admin_password);

        return adminDAO.save(admin);

    }

    @Override
    public Admin update(HttpServletRequest request) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Admin delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Admin> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Admin getById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
