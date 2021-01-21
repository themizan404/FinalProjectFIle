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
        int id = Integer.parseInt(request.getParameter("id"));
        int nid = Integer.parseInt(request.getParameter("admin_nid"));
        String admin_name = request.getParameter("admin_name");
        String admin_password = request.getParameter("admin_password");

        Admin admin = new Admin();
        admin.setId(id);
        admin.setAdmin_nid(nid);
        admin.setAdmin_name(admin_name);
        admin.setAdmin_password(admin_password);

        return adminDAO.update(admin);
    }

    @Override
    public Admin delete(int id) {
        return adminDAO.delete(id);
    }

    @Override
    public Admin getById(int id) {

        return adminDAO.getById(id);
    }

    @Override
    public List<Admin> getAll() {
        List<Admin> admins = adminDAO.getAll();
        return admins;

    }

}
