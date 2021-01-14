/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spr.mav.controller;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.spr.mav.model.Patient;
import com.spr.mav.service.impl.IPatientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Faculty Pc
 */
@RestController
//@RequestMapping(value = "info")
public class IndexController {

    @Autowired
    IPatientService patientService;

    @RequestMapping("/")
    public ModelAndView index() {
        return new ModelAndView("index");
    }

    // AdminLog
    @RequestMapping("/login")
    public ModelAndView login() {
        return new ModelAndView("admin/login");
    }

//    // employeeLog
//    @RequestMapping("/employeeLog")
//    public ModelAndView emplogin() {
//        return new ModelAndView("/admin/employeeLog");
//    }
//
//    //Adminreg
//    @RequestMapping("/adminreg")
//    public ModelAndView adminreg() {
//        return new ModelAndView("/admin/adminreg");
//    }
    //AdminPage
    @RequestMapping("/myAdmin")
    public ModelAndView myAdmin() {
        return new ModelAndView("/admin/myAdmin");
    }

//    //EmployeeData
//    @RequestMapping("/employeeData")
//    public ModelAndView adminDashBoard() {
//        return new ModelAndView("/admin/employeeData");
//    }
    //EmployeeData
    @RequestMapping("/dashboard")
    public ModelAndView DashBoard() {
        return new ModelAndView("/admin/dashboard");
    }

    //Admin Page
    @RequestMapping("/adminpage")
    public ModelAndView adminPage() {
        return new ModelAndView("/admin/adminpage");
    }

    //Patient Page
    @RequestMapping("/patientpage")
    public ModelAndView patientPage() {
        return new ModelAndView("/admin/patientpage");
    }

    //leaveData
    @RequestMapping("/hospitalpage")
    public ModelAndView hospitalPage() {
        return new ModelAndView("/admin/hospitalpage");
    }
//    //leaveData
//    @RequestMapping("/leaveData")
//    public ModelAndView leaveData() {
//        return new ModelAndView("/admin/leaveData");
//    }

//    //taskData
//    @RequestMapping("/taskData")
//    public ModelAndView taskData() {
//        return new ModelAndView("/admin/taskData");
//    }
//
//    //projectData
//    @RequestMapping("/projectData")
//    public ModelAndView projectData() {
//        return new ModelAndView("/admin/projectData");
//    }
//
//    @RequestMapping("/faculty")
//    public ModelAndView faculty() {
//        return new ModelAndView("/admin/faculty");
//    }
//
//    @RequestMapping("/library")
//    public ModelAndView library() {
//        return new ModelAndView("/admin/library");
//    }
//
//    @RequestMapping("/notice")
//    public ModelAndView notice() {
//        return new ModelAndView("/admin/notice");
//    }
    @RequestMapping(value = "/getPatientById/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public String getAllPatients(@PathVariable("id") int id) {
        GsonBuilder gson = new GsonBuilder();
        Gson g = gson.create();
        Patient patient = patientService.getById(id);
        return g.toJson(patient);
    }

    @RequestMapping(value = "/getPatientByNid/{patient_nid}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public String getAllPatientsByNid(@PathVariable("patient_nid") int patient_nid) {
        GsonBuilder gson = new GsonBuilder();
        Gson g = gson.create();
        Patient patient = patientService.getById(patient_nid);
        return g.toJson(patient);
    }

}
