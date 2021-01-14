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
@RestController
@RequestMapping(value = "staff")
public class HomeStaffPage {
//
//    @RequestMapping("/dashboard")
//    public ModelAndView dashBoard() {
//        return new ModelAndView("/staff/homestaffpage");
//    }

    @RequestMapping("/appointmentform")
    public ModelAndView appointmentform() {
        return new ModelAndView("/staff/appointmentFormForHospital");
    }

    @RequestMapping("/onlineappointmentform")
    public ModelAndView onlineappointmentform() {
        return new ModelAndView("/staff/onlineAppointmentForm");
    }
}
