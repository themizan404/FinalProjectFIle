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
 * @author TCLD
 */
@RestController
@RequestMapping("admin")
public class DashBoardController {

    @RequestMapping("/dashboard")
    public ModelAndView dashBoard() {
        return new ModelAndView("/dashBoard/dashBoard");
    }

    @RequestMapping("/doctorpage")
    public ModelAndView doctorPage() {
        return new ModelAndView("/doctor/doctorpage");
    }

    @RequestMapping("/staffpage")
    public ModelAndView staffPage() {
        return new ModelAndView("/staff/staffpage");
    }

    @RequestMapping("/departmentpage")
    public ModelAndView deparmentPage() {
        return new ModelAndView("/department/departmentpage");
    }

    @RequestMapping("/laboratorypage")
    public ModelAndView laboratoryPage() {
        return new ModelAndView("/laboratory/laboratoryPage");
    }

    @RequestMapping("/medicinepage")
    public ModelAndView medicinePage() {
        return new ModelAndView("/medicine/medicinepage");
    }

    @RequestMapping("/adminpage")
    public ModelAndView adminPage() {
        return new ModelAndView("/admin/adminpage");
    }

}
