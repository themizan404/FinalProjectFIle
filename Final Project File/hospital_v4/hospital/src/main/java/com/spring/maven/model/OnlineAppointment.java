/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.model;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import org.hibernate.annotations.GeneratorType;

/**
 *
 * @author mohdm
 */
@Entity
public class OnlineAppointment {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private int patient_nid;
    private String patient_problem;
    private String contact_number;
    private String appointmentDate;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPatient_nid() {
        return patient_nid;
    }

    public void setPatient_nid(int patient_nid) {
        this.patient_nid = patient_nid;
    }

    public String getPatient_problem() {
        return patient_problem;
    }

    public void setPatient_problem(String patient_problem) {
        this.patient_problem = patient_problem;
    }

    public String getContact_number() {
        return contact_number;
    }

    public void setContact_number(String contact_number) {
        this.contact_number = contact_number;
    }

    public String getAppointmentDate() {
        return appointmentDate;
    }

    public void setAppointmentDate(String appointmentDate) {
        this.appointmentDate = appointmentDate;
    }

}
