/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import javax.servlet.http.HttpServletRequest;
import model.CustomerEntity;
import org.springframework.stereotype.Repository;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Windows 18
 */
@Repository
@RequestMapping(value = "/color")
public class SwitchColor {
    
    @RequestMapping(value = "/themeuser/{id}", method = RequestMethod.GET)
    public String themeuser(ModelMap mm,HttpServletRequest request,@PathVariable(value = "id")int id){
        mm.put("bgtheme", "bg-theme bg-theme"+id);
        request.getSession().setAttribute("bgtheme", "bg-theme bg-theme"+id);
        return "redirect:/file/register/login";
    }
    @RequestMapping(value = "/themeadmin/{id}", method = RequestMethod.GET)
    public String themeadmin(ModelMap mm,HttpServletRequest request,@PathVariable(value = "id")int id){
        mm.put("bgtheme", "bg-theme bg-theme"+id);
        request.getSession().setAttribute("bgtheme", "bg-theme bg-theme"+id);
        return "redirect:/file/home/viewmau";
    }
}
