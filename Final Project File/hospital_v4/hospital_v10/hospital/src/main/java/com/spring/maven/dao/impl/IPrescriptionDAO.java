/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.dao.impl;

import com.spring.maven.common.ICommonDAO;
import com.spring.maven.model.Prescription;
import java.util.List;

/**
 *
 * @author B8
 */
public interface IPrescriptionDAO extends ICommonDAO<Prescription> {

    public Prescription getByNid(int patient_nid);

    public Prescription getPrescriptionData(int patient_nid);
}
