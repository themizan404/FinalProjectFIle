/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.model;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author mohdm
 */
@Entity
public class Doctor {

    @Id
    private int id;
    private int doctor_nid;
    private String doctor_name;
    private String doctor_degree;
    private String doctor_specialist;
    private String doctor_designation;
    private String doctor_department;
    private String doctor_registerId;
    private String doctor_password;

//    Hospital Table
    private String hospital_number;
    private String hospital_name;
    private String hospital_type;
    private String hospital_location;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getDoctor_nid() {
        return doctor_nid;
    }

    public void setDoctor_nid(int doctor_nid) {
        this.doctor_nid = doctor_nid;
    }

    public String getDoctor_name() {
        return doctor_name;
    }

    public void setDoctor_name(String doctor_name) {
        this.doctor_name = doctor_name;
    }

    public String getDoctor_degree() {
        return doctor_degree;
    }

    public void setDoctor_degree(String doctor_degree) {
        this.doctor_degree = doctor_degree;
    }

    public String getDoctor_specialist() {
        return doctor_specialist;
    }

    public void setDoctor_specialist(String doctor_specialist) {
        this.doctor_specialist = doctor_specialist;
    }

    public String getDoctor_designation() {
        return doctor_designation;
    }

    public void setDoctor_designation(String doctor_designation) {
        this.doctor_designation = doctor_designation;
    }

    public String getDoctor_department() {
        return doctor_department;
    }

    public void setDoctor_department(String doctor_department) {
        this.doctor_department = doctor_department;
    }

    public String getDoctor_registerId() {
        return doctor_registerId;
    }

    public void setDoctor_registerId(String doctor_registerId) {
        this.doctor_registerId = doctor_registerId;
    }

    public String getDoctor_password() {
        return doctor_password;
    }

    public void setDoctor_password(String doctor_password) {
        this.doctor_password = doctor_password;
    }

    public String getHospital_number() {
        return hospital_number;
    }

    public void setHospital_number(String hospital_number) {
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
