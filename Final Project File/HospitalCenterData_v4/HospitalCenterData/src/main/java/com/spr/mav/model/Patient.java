/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spr.mav.model;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author mohdm
 */
@Entity
public class Patient {

    @Id
    private int id;
    private int patient_nid;
    private String patient_name;
    private String patient_gender;
    private String patient_age;
    private String patient_address;

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

    public String getPatient_name() {
        return patient_name;
    }

    public void setPatient_name(String patient_name) {
        this.patient_name = patient_name;
    }

    public String getPatient_gender() {
        return patient_gender;
    }

    public void setPatient_gender(String patient_gender) {
        this.patient_gender = patient_gender;
    }

    public String getPatient_age() {
        return patient_age;
    }

    public void setPatient_age(String patient_age) {
        this.patient_age = patient_age;
    }

    public String getPatient_address() {
        return patient_address;
    }

    public void setPatient_address(String patient_address) {
        this.patient_address = patient_address;
    }

}
