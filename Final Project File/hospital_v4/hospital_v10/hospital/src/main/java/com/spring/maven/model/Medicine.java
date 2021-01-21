/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author mohdm
 */
@Entity
public class Medicine {

    @Id
    private int id;

    private String medicine_name;

    private String generic_group;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMedicine_name() {
        return medicine_name;
    }

    public void setMedicine_name(String medicine_name) {
        this.medicine_name = medicine_name;
    }

    public String getGeneric_group() {
        return generic_group;
    }

    public void setGeneric_group(String generic_group) {
        this.generic_group = generic_group;
    }

}
