/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.controller;

import com.spring.maven.controller.impl.IAdminController;
import com.spring.maven.model.Admin;
import com.spring.maven.service.impl.IAdminService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author mohdm
 */
@RestController
@RequestMapping(value = "admin")
public class AdminController implements IAdminController {

    @Autowired
    IAdminService adminService;

    @Override
    @RequestMapping(value = "/create")
    public ModelAndView create() {
        return new ModelAndView("admin/adminpage");
    }

    @Override
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        adminService.save(request);
        return new ModelAndView("redirect:/admin/adminpage");
    }

    @Override
    @RequestMapping(value = "adminEdit/{id}", method = RequestMethod.GET)

    public ModelAndView edit(@PathVariable("id") int id) {
        Map<String, Object> map = new HashMap<String, Object>();
        Admin admin = adminService.getById(id); 
        map.put("admin", admin);
        return new ModelAndView("admin/adminUpdate", "map", map);
    }

    @Override
    @RequestMapping(value = "/adminUpdate")
    public ModelAndView update(HttpServletRequest request) {
        adminService.update(request);
        return new ModelAndView("redirect:/admin/viewAdmin");
    }

    @Override
    public ModelAndView delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Admin> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @RequestMapping(value = "/viewAdmin")
    public ModelAndView adminView() {
        List<Admin> admins = adminService.getAll();
        Map<String, Object> map = new HashMap<>();
        map.put("admins", admins);
        return new ModelAndView("/admin/viewAdmin", "map", map);
    }

    @RequestMapping(value = "/adminDelete/{id}", method = RequestMethod.GET)
    public ModelAndView adminDelele(@PathVariable("id") int id) {
        adminService.delete(id);
        return new ModelAndView("redirect:/admin/viewAdmin");
    }
}
