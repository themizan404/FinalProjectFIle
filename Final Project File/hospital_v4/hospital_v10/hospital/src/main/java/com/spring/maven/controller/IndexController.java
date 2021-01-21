/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.controller;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.spring.maven.model.HospitalAppointment;
import com.spring.maven.model.OnlineAppointment;
import com.spring.maven.model.Prescription;
import com.spring.maven.service.impl.IHospitalAppointmentService;
import com.spring.maven.service.impl.IOnlineAppointmentService;
import com.spring.maven.service.impl.IPrescriptionService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
@RestController()
public class IndexController {

    @Autowired
    IHospitalAppointmentService hospitalAppointmentService;

    @Autowired
    IOnlineAppointmentService onlineAppointmentService;

    @Autowired
    IPrescriptionService prescriptionService;

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

//    @RequestMapping("/doctor/hospitalappointment")
//    public ModelAndView doctorHospitalList() {
//        return new ModelAndView("doctor/physicalappointment");
//
//    }
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

    @RequestMapping(value = "/patientwaitinglist/{id}", method = RequestMethod.GET)
    public ModelAndView edit(@PathVariable("id") int id) {
        Map<String, Object> map = new HashMap<>();
        HospitalAppointment hospitalAppointment = hospitalAppointmentService.getById(id);
        map.put("hospitalAppointment", hospitalAppointment);
        return new ModelAndView("doctor/patientprescription", "map", map);
    }

    @RequestMapping(value = "/appointmentlist")
    public ModelAndView getAllHospitalAppointmentlist() {
        List<HospitalAppointment> hospitalAppointments = hospitalAppointmentService.getAll();
        Map<String, Object> map = new HashMap<>();
        map.put("hospitalAppointments", hospitalAppointments);

        return new ModelAndView("doctor/physicalappointment", "map", map);
    }
//    @RequestMapping(value = "/onlineinvoice")
//    public ModelAndView getAllAppointment() {
//
//        List<OnlineAppointment> onlineAppointments = onlineAppointmentService.getAll();
//        Map<String, Object> map = new HashMap<String, Object>();
//        map.put("onlineAppointments", onlineAppointments);
//        return new ModelAndView("staff/onlineInvoice", "map", map);
//    }
//    @RequestMapping("doctor/physicalappointment")
//    public ModelAndView physicalList() {
//        return new ModelAndView("doctor/physicalappointment");
//
//    }

    @RequestMapping("doctor/prescription")
    public ModelAndView patientPrescription() {
        return new ModelAndView("doctor/patientprescription");

    }

    @RequestMapping(value = "getPrescriptionByNid/{patient_nid}", method = RequestMethod.GET)
    public Prescription getPrescriptionByNid(@PathVariable("patient_nid") int patient_nid) {
        //GsonBuilder gson = new GsonBuilder();
        //Gson g = gson.create();
        Prescription prescription = prescriptionService.getByNid(patient_nid);
        return prescription;
    }

//    @RequestMapping("/report")
//    public ModelAndView report() {
//        List<Prescription> prescriptions = prescriptionService.getAll();
//        Map<String, Object> map = new HashMap<>();
//        map.put("prescriptions", prescriptions);
//        return new ModelAndView("invoice/reportprint", "map", map);
//
//    }
}
