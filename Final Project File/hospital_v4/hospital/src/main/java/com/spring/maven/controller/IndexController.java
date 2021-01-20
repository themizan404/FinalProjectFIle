/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.controller;

import com.spring.maven.model.HospitalAppointment;
import com.spring.maven.model.OnlineAppointment;
import com.spring.maven.service.impl.IHospitalAppointmentService;
import com.spring.maven.service.impl.IOnlineAppointmentService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author mohdm
 */
@RestController()
public class IndexController {

    @Autowired
    IHospitalAppointmentService hospitalAppointmentService;

    @Autowired
    IOnlineAppointmentService onlineAppointmentService;

    @RequestMapping("/")
    public ModelAndView index() {
        return new ModelAndView("index");
    }

    @RequestMapping("/login")
    public ModelAndView login() {
        return new ModelAndView("commonlogin/commonlogin");
    }

    @RequestMapping("/adminlogin")
    public ModelAndView adminlogin() {
        return new ModelAndView("commonlogin/adminlogin");
    }

    @RequestMapping("/doctorlogin")
    public ModelAndView doctorlogin() {
        return new ModelAndView("commonlogin/doctorlogin");
    }

    @RequestMapping("/stafflogin")
    public ModelAndView stafflogin() {
        return new ModelAndView("commonlogin/stafflogin");
    }

    @RequestMapping("/onlineappoint")
    public ModelAndView onlineAppointment() {
        return new ModelAndView("onlineAppointment/appointmentForm");

    }

    @RequestMapping("/staff/dashboard")
    public ModelAndView staffHomePage() {
        return new ModelAndView("staff/homestaffpage");

    }

    @RequestMapping("doctor/dashboard")
    public ModelAndView doctorDashboard() {
        return new ModelAndView("doctor/doctordashboard");

    }

    @RequestMapping("/doctor/hospitalappointment")
    public ModelAndView doctorHospitalList() {
        return new ModelAndView("doctor/physicalappointment");

    }

    @RequestMapping("/doctor/onlineappointment")
    public ModelAndView doctorOnlineList() {
        return new ModelAndView("doctor/onlineappointment");

    }

    @RequestMapping("/inviocelist")
    public ModelAndView invoiceList() {
        return new ModelAndView("staff/invoiceList");

    }

//   @RequestMapping("/hospitalinvoice")
//    public ModelAndView hospitalInvoice() {
//        return new ModelAndView("staff/hospitalInvoice");
//
//    }
//    @RequestMapping("/onlineinvoice")
//    public ModelAndView onlineInvoice() {
//        return new ModelAndView("staff/onlineInvoice");
//
//    }
    @RequestMapping(value = "/hospitalinvoice")
    public ModelAndView getAllHospitalAppointment() {
        List<HospitalAppointment> hospitalAppointments = hospitalAppointmentService.getAll();
        Map<String, Object> map = new HashMap<>();
        map.put("hospitalAppointments", hospitalAppointments);

        return new ModelAndView("staff/hospitalInvoice", "map", map);
    }

    @RequestMapping(value = "/onlineinvoice")
    public ModelAndView getAllAppointment() {

        List<OnlineAppointment> onlineAppointments = onlineAppointmentService.getAll();
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("onlineAppointments", onlineAppointments);
        return new ModelAndView("staff/onlineInvoice", "map", map);
    }
//    @RequestMapping("doctor/physicalappointment")
//    public ModelAndView physicalList() {
//        return new ModelAndView("doctor/physicalappointment");
//
//    }

    @RequestMapping("doctor/prescription")
    public ModelAndView patientPrescription() {
        return new ModelAndView("doctor/patientprescription");

    }
}
