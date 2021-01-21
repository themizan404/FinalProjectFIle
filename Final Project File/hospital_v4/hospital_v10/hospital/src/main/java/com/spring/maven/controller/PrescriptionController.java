/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.controller;

import com.spring.maven.controller.impl.IPrescriptionController;
import com.spring.maven.model.Prescription;
import com.spring.maven.service.impl.IPrescriptionService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author B8
 */
@RestController
public class PrescriptionController implements IPrescriptionController {

    @Autowired
    IPrescriptionService prescriptionService;

    @Override
    public ModelAndView create() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    @RequestMapping(value = "/patientSave", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        prescriptionService.save(request);
        return new ModelAndView("/invoice/prescriptionprint");
    }

    @Override
    @RequestMapping(value = "/patientEdit/{id}")
    public ModelAndView edit(int id) {
        Map<String, Object> map = new HashMap<>();
        Prescription prescription = prescriptionService.getById(id);
        map.put("prescription", prescription);
        return new ModelAndView("/doctor/patientprescription", "map", map);
    }

    @Override
    public ModelAndView update(HttpServletRequest request) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    @RequestMapping(value = "/prescriptiondelete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(int id) {
        prescriptionService.delete(id);
        return new ModelAndView();
    }

    @Override
    public List<Prescription> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.

    }

    @Override
    @RequestMapping(value = "/prescriptionview")
    public ModelAndView prescriptionView() {
        List<Prescription> prescriptions = prescriptionService.getAll();
        Map<String, Object> map = new HashMap<>();
        map.put("prescriptions", prescriptions);
        return new ModelAndView("Report/reportprint", "map", map);
    }

}
