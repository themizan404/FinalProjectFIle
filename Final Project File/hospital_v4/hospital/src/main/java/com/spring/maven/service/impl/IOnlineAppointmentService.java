/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.service.impl;

import com.spring.maven.common.ICommonService;
import com.spring.maven.model.OnlineAppointment;

/**
 *
 * @author mohdm
 */
public interface IOnlineAppointmentService extends ICommonService<OnlineAppointment> {

    public OnlineAppointment getByNid(int patient_nid);
}
