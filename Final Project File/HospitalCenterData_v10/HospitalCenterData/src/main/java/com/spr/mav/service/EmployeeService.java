/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spr.mav.service;

import com.spr.mav.dao.impl.IEmployeeDAO;
import com.spr.mav.model.Employee;
import com.spr.mav.service.impl.IEmployeeService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author zaman
 */
@Service
public class EmployeeService implements IEmployeeService {

    @Autowired
    IEmployeeDAO employeeDAO;

    @Override
    public Employee save(HttpServletRequest request) {
        int empid = Integer.parseInt(request.getParameter("empid"));
        String empname = request.getParameter("empname");
        String empdep = request.getParameter("empdep");
        String empdeg = request.getParameter("empdeg");
        String empphn = request.getParameter("empphn");

        String empemail = request.getParameter("empemail");
        String empaddress = request.getParameter("empaddress");
        String empbirth = request.getParameter("empbirth");
        String empgen = request.getParameter("gender");

        String empnid = request.getParameter("empnid");
        String empbgroup = request.getParameter("empbgroup");
        String empjdate = request.getParameter("empjdate");
        String empqdate = request.getParameter("empqdate");

        Employee emp = new Employee();
        emp.setEmp_id(empid);
        emp.setEmp_name(empname);
        emp.setEmp_dep(empdep);
        emp.setEmp_deg(empdeg);
        emp.setEmp_phn(empphn);
        emp.setEmp_email(empemail);
        emp.setEmp_address(empaddress);
        emp.setEmp_birth(empbirth);
        emp.setEmp_gen(empgen);
        emp.setEmp_nid(empnid);
        emp.setEmp_bgroup(empbgroup);
        emp.setEmp_jdate(empjdate);
        emp.setEmp_qdate(empqdate);

        return employeeDAO.save(emp);
    }

    @Override
    public Employee update(HttpServletRequest request) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Employee delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Employee> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Employee getById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
