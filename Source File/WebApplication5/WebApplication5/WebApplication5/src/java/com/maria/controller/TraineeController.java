package com.maria.controller;

import com.maria.model.Trainee;
import com.maria.service.TraineeService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TraineeController {

    @Autowired
    TraineeService traineeService;

    @RequestMapping("")
    public String home() {
        return "index";
    }

    @RequestMapping(value = "/main", method = RequestMethod.GET)
    public ModelAndView main() {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Trainee> trainees = traineeService.getAll();
        map.put("trainees", trainees);
        return new ModelAndView("/main", "map", map);
    }

    @RequestMapping(value = "/save", method = RequestMethod.GET)
    public String save(HttpServletRequest request) {
        traineeService.save(request);
        return "redirect:/main";
    }

    @RequestMapping(value = "/update", method = RequestMethod.GET)
    public String update(HttpServletRequest request) {
        Trainee trainee = traineeService.update(request);
        return "redirect:/main";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(ModelMap map, @PathVariable("id") int id) {
        Trainee trainee = traineeService.getById(id);
        map.addAttribute("trainee", trainee);
        return "main";
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable("id") int id) {
        traineeService.delete(id);
        return "redirect:/main";
    }
}









