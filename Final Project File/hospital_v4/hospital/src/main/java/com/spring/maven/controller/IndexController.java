/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author mohdm
 */
@RestController()
public class IndexController {

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

    @RequestMapping("doctor/onlineappointment")
    public ModelAndView onlineList() {
        return new ModelAndView("doctor/onlineappointment");

    }

//    @RequestMapping("doctor/physicalappointment")
//    public ModelAndView physicalList() {
//        return new ModelAndView("doctor/physicalappointment");
//
//    }
//    @RequestMapping("doctor/prescription")
//    public ModelAndView patientPrescription() {
//        return new ModelAndView("doctor/patientprescription");
//
//    }
}
