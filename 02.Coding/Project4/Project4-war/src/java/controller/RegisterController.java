/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import javax.servlet.http.HttpServletRequest;
import model.CustomerEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Windows 18
 */
@Controller
@RequestMapping(value = "/register")
public class RegisterController {
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(ModelMap mm){          
        mm.put("customer", new CustomerEntity());
        return "login/login.jsp";
    }
    @RequestMapping(value = "/resetpassword", method = RequestMethod.GET)
    public String resetpassword(ModelMap mm){          
        //mm.put("customer", new CustomerEntity());
        return "login/resetpassword.jsp";
    }
    @RequestMapping(value = "/loginadmin", method = RequestMethod.POST)
    public String loginadmin(ModelMap mm,@ModelAttribute(value = "customer")CustomerEntity customer,HttpServletRequest request){          
        if(customer.getCustomerName().equals("hai")&&customer.getCustomerPassword().equals("123")){
            request.getSession().setAttribute("fullname", "Nguyen Hai");
            return "redirect:/file/home/hello";
        }
        else if(customer.getCustomerName().equals("admin")&&customer.getCustomerPassword().equals("admin")){
            request.getSession().setAttribute("admin", "Nguyen Hai");
            return "redirect:/file/admin/viewall";
        }
        else{
            mm.put("erro", "Invalid UserName or Password");
            return "login/login.jsp";
        }
    }
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(ModelMap mm,HttpServletRequest request){
        request.getSession().invalidate();
        request.getSession().setAttribute("links", request.getContextPath());
        mm.put("customer", new CustomerEntity());
        return "login/login.jsp";
    }
}
