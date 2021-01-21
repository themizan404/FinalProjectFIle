/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.service.impl;

import com.spring.maven.common.ICommonService;
import com.spring.maven.model.Prescription;

/**
 *
 * @author B8
 */
public interface IPrescriptionService extends ICommonService<Prescription> {

    public Prescription getByNid(int patient_nid);

    public Prescription getPriscriptionData(int patient_nid);
}
