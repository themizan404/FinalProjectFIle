package com.spr.mav.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name = "empl")
@Table(name = "empl")
public class Employee {

    @Id
    private int id;

    @Column(name = "emp_id")
    private int emp_id;

    @Column(name = "emp_name")
    private String emp_name;

    @Column(name = "emp_dep")
    private String emp_dep;

    @Column(name = "emp_deg")
    private String emp_deg;

    @Column(name = "emp_phn")
    private String emp_phn;

    @Column(name = "emp_email")
    private String emp_email;

    @Column(name = "emp_address")
    private String emp_address;

    @Column(name = "emp_birth")
    private String emp_birth;

    @Column(name = "emp_gen")
    private String emp_gen;

    @Column(name = "emp_nid")
    private String emp_nid;

    @Column(name = "emp_bgroup")
    private String emp_bgroup;

    @Column(name = "emp_jdate")
    private String emp_jdate;

    @Column(name = "emp_qdate")
    private String emp_qdate;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getEmp_id() {
        return emp_id;
    }

    public void setEmp_id(int emp_id) {
        this.emp_id = emp_id;
    }

    public String getEmp_name() {
        return emp_name;
    }

    public void setEmp_name(String emp_name) {
        this.emp_name = emp_name;
    }

    public String getEmp_dep() {
        return emp_dep;
    }

    public void setEmp_dep(String emp_dep) {
        this.emp_dep = emp_dep;
    }

    public String getEmp_deg() {
        return emp_deg;
    }

    public void setEmp_deg(String emp_deg) {
        this.emp_deg = emp_deg;
    }

    public String getEmp_phn() {
        return emp_phn;
    }

    public void setEmp_phn(String emp_phn) {
        this.emp_phn = emp_phn;
    }

    public String getEmp_email() {
        return emp_email;
    }

    public void setEmp_email(String emp_email) {
        this.emp_email = emp_email;
    }

    public String getEmp_address() {
        return emp_address;
    }

    public void setEmp_address(String emp_address) {
        this.emp_address = emp_address;
    }

    public String getEmp_birth() {
        return emp_birth;
    }

    public void setEmp_birth(String emp_birth) {
        this.emp_birth = emp_birth;
    }

    public String getEmp_gen() {
        return emp_gen;
    }

    public void setEmp_gen(String emp_gen) {
        this.emp_gen = emp_gen;
    }

    public String getEmp_nid() {
        return emp_nid;
    }

    public void setEmp_nid(String emp_nid) {
        this.emp_nid = emp_nid;
    }

    public String getEmp_bgroup() {
        return emp_bgroup;
    }

    public void setEmp_bgroup(String emp_bgroup) {
        this.emp_bgroup = emp_bgroup;
    }

    public String getEmp_jdate() {
        return emp_jdate;
    }

    public void setEmp_jdate(String emp_jdate) {
        this.emp_jdate = emp_jdate;
    }

    public String getEmp_qdate() {
        return emp_qdate;
    }

    public void setEmp_qdate(String emp_qdate) {
        this.emp_qdate = emp_qdate;
    }

}
