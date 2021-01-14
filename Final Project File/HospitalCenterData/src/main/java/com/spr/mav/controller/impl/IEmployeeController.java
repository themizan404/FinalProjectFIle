/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spr.mav.controller.impl;

import com.spr.mav.common.ICommonController;
import com.spr.mav.model.Employee;

/**
 *
 * @author Faculty Pc
 */
public interface IEmployeeController extends ICommonController<Employee> {

    public String getAllEmployees();
    //public String save1();
}
