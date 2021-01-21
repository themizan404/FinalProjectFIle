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
 * @author B8
 */
@Entity
public class Report {

    private int id;
    @Id
    private int patient_nid;
    private String patient_name;
    private String patient_age;
    private String patient_gender;
    private String patient_address;
    private String temperature;
    private String weight;
    private String blood_pressure;
    private String date;

    // For Symptoms Table
    private String symptom1;
    private String symptom2;
    private String symptom3;
    private String symptom4;
    private String symptom5;

    // For Symptoms Table Duration
    private String symptom_duration1;
    private String symptom_duration2;
    private String symptom_duration3;
    private String symptom_duration4;
    private String symptom_duration5;

    // For Medicine Table
    private String medicine1;
    private String medicine2;
    private String medicine3;
    private String medicine4;
    private String medicine5;

    // For Medicine Table Dose
    private String medicine_dose1;
    private String medicine_dose2;
    private String medicine_dose3;
    private String medicine_dose4;
    private String medicine_dose5;

    // For Medicine Table Dose Duration
    private String medicine_duration1;
    private String medicine_duration2;
    private String medicine_duration3;
    private String medicine_duration4;
    private String medicine_duration5;

    // For Test Table
    private String test1;
    private String test2;
    private String test3;
    private String test4;
    private String test5;

    // For Test Table Report
    private String test_report1;
    private String test_report2;
    private String test_report3;
    private String test_report4;
    private String test_report5;

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

    public String getPatient_age() {
        return patient_age;
    }

    public void setPatient_age(String patient_age) {
        this.patient_age = patient_age;
    }

    public String getPatient_gender() {
        return patient_gender;
    }

    public void setPatient_gender(String patient_gender) {
        this.patient_gender = patient_gender;
    }

    public String getPatient_address() {
        return patient_address;
    }

    public void setPatient_address(String patient_address) {
        this.patient_address = patient_address;
    }

    public String getTemperature() {
        return temperature;
    }

    public void setTemperature(String temperature) {
        this.temperature = temperature;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public String getBlood_pressure() {
        return blood_pressure;
    }

    public void setBlood_pressure(String blood_pressure) {
        this.blood_pressure = blood_pressure;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getSymptom1() {
        return symptom1;
    }

    public void setSymptom1(String symptom1) {
        this.symptom1 = symptom1;
    }

    public String getSymptom2() {
        return symptom2;
    }

    public void setSymptom2(String symptom2) {
        this.symptom2 = symptom2;
    }

    public String getSymptom3() {
        return symptom3;
    }

    public void setSymptom3(String symptom3) {
        this.symptom3 = symptom3;
    }

    public String getSymptom4() {
        return symptom4;
    }

    public void setSymptom4(String symptom4) {
        this.symptom4 = symptom4;
    }

    public String getSymptom5() {
        return symptom5;
    }

    public void setSymptom5(String symptom5) {
        this.symptom5 = symptom5;
    }

    public String getSymptom_duration1() {
        return symptom_duration1;
    }

    public void setSymptom_duration1(String symptom_duration1) {
        this.symptom_duration1 = symptom_duration1;
    }

    public String getSymptom_duration2() {
        return symptom_duration2;
    }

    public void setSymptom_duration2(String symptom_duration2) {
        this.symptom_duration2 = symptom_duration2;
    }

    public String getSymptom_duration3() {
        return symptom_duration3;
    }

    public void setSymptom_duration3(String symptom_duration3) {
        this.symptom_duration3 = symptom_duration3;
    }

    public String getSymptom_duration4() {
        return symptom_duration4;
    }

    public void setSymptom_duration4(String symptom_duration4) {
        this.symptom_duration4 = symptom_duration4;
    }

    public String getSymptom_duration5() {
        return symptom_duration5;
    }

    public void setSymptom_duration5(String symptom_duration5) {
        this.symptom_duration5 = symptom_duration5;
    }

    public String getMedicine1() {
        return medicine1;
    }

    public void setMedicine1(String medicine1) {
        this.medicine1 = medicine1;
    }

    public String getMedicine2() {
        return medicine2;
    }

    public void setMedicine2(String medicine2) {
        this.medicine2 = medicine2;
    }

    public String getMedicine3() {
        return medicine3;
    }

    public void setMedicine3(String medicine3) {
        this.medicine3 = medicine3;
    }

    public String getMedicine4() {
        return medicine4;
    }

    public void setMedicine4(String medicine4) {
        this.medicine4 = medicine4;
    }

    public String getMedicine5() {
        return medicine5;
    }

    public void setMedicine5(String medicine5) {
        this.medicine5 = medicine5;
    }

    public String getMedicine_dose1() {
        return medicine_dose1;
    }

    public void setMedicine_dose1(String medicine_dose1) {
        this.medicine_dose1 = medicine_dose1;
    }

    public String getMedicine_dose2() {
        return medicine_dose2;
    }

    public void setMedicine_dose2(String medicine_dose2) {
        this.medicine_dose2 = medicine_dose2;
    }

    public String getMedicine_dose3() {
        return medicine_dose3;
    }

    public void setMedicine_dose3(String medicine_dose3) {
        this.medicine_dose3 = medicine_dose3;
    }

    public String getMedicine_dose4() {
        return medicine_dose4;
    }

    public void setMedicine_dose4(String medicine_dose4) {
        this.medicine_dose4 = medicine_dose4;
    }

    public String getMedicine_dose5() {
        return medicine_dose5;
    }

    public void setMedicine_dose5(String medicine_dose5) {
        this.medicine_dose5 = medicine_dose5;
    }

    public String getMedicine_duration1() {
        return medicine_duration1;
    }

    public void setMedicine_duration1(String medicine_duration1) {
        this.medicine_duration1 = medicine_duration1;
    }

    public String getMedicine_duration2() {
        return medicine_duration2;
    }

    public void setMedicine_duration2(String medicine_duration2) {
        this.medicine_duration2 = medicine_duration2;
    }

    public String getMedicine_duration3() {
        return medicine_duration3;
    }

    public void setMedicine_duration3(String medicine_duration3) {
        this.medicine_duration3 = medicine_duration3;
    }

    public String getMedicine_duration4() {
        return medicine_duration4;
    }

    public void setMedicine_duration4(String medicine_duration4) {
        this.medicine_duration4 = medicine_duration4;
    }

    public String getMedicine_duration5() {
        return medicine_duration5;
    }

    public void setMedicine_duration5(String medicine_duration5) {
        this.medicine_duration5 = medicine_duration5;
    }

    public String getTest1() {
        return test1;
    }

    public void setTest1(String test1) {
        this.test1 = test1;
    }

    public String getTest2() {
        return test2;
    }

    public void setTest2(String test2) {
        this.test2 = test2;
    }

    public String getTest3() {
        return test3;
    }

    public void setTest3(String test3) {
        this.test3 = test3;
    }

    public String getTest4() {
        return test4;
    }

    public void setTest4(String test4) {
        this.test4 = test4;
    }

    public String getTest5() {
        return test5;
    }

    public void setTest5(String test5) {
        this.test5 = test5;
    }

    public String getTest_report1() {
        return test_report1;
    }

    public void setTest_report1(String test_report1) {
        this.test_report1 = test_report1;
    }

    public String getTest_report2() {
        return test_report2;
    }

    public void setTest_report2(String test_report2) {
        this.test_report2 = test_report2;
    }

    public String getTest_report3() {
        return test_report3;
    }

    public void setTest_report3(String test_report3) {
        this.test_report3 = test_report3;
    }

    public String getTest_report4() {
        return test_report4;
    }

    public void setTest_report4(String test_report4) {
        this.test_report4 = test_report4;
    }

    public String getTest_report5() {
        return test_report5;
    }

    public void setTest_report5(String test_report5) {
        this.test_report5 = test_report5;
    }

}
