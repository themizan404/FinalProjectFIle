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
public class Hospital {

    @Id
    private int id;
    private int hospital_number;
    private String hospital_name;
    private String hospital_type;
    private String hospital_location;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getHospital_number() {
        return hospital_number;
    }

    public void setHospital_number(int hospital_number) {
        this.hospital_number = hospital_number;
    }

    public String getHospital_name() {
        return hospital_name;
    }

    public void setHospital_name(String hospital_name) {
        this.hospital_name = hospital_name;
    }

    public String getHospital_type() {
        return hospital_type;
    }

    public void setHospital_type(String hospital_type) {
        this.hospital_type = hospital_type;
    }

    public String getHospital_location() {
        return hospital_location;
    }

    public void setHospital_location(String hospital_location) {
        this.hospital_location = hospital_location;
    }

}
