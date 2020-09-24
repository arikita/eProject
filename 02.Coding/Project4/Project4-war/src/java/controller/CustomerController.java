/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import entity.TblCustomer;
import entity.TblDistrict;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import model.CustomerEntity;
import model.DistrictEntity;
import org.springframework.stereotype.Repository;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import sb.TblCustomerFacadeLocal;
import sb.TblDistrictFacadeLocal;
import sb.TblProvinceFacadeLocal;

@Repository
@RequestMapping(value = "/customer")
public class CustomerController {

    TblProvinceFacadeLocal tblProvinceFacade = lookupTblProvinceFacadeLocal();
    TblDistrictFacadeLocal tblDistrictFacade = lookupTblDistrictFacadeLocal();    
    TblCustomerFacadeLocal tblCustomerFacade = lookupTblCustomerFacadeLocal();

    
    @RequestMapping(value = "/viewall", method = RequestMethod.GET)
    public String viewall(ModelMap mm, HttpServletRequest request) {
        request.getSession().setAttribute("links", request.getContextPath());
        mm.put("customers", tblCustomerFacade.findAll());
        mm.put("homepage", "customer");
        return "customer/viewall.jsp";
    }
    
    @RequestMapping(value = "/createcustomer", method = RequestMethod.GET)
    public String showcreate(ModelMap mm, HttpServletRequest request) {
        mm.put("customer", new CustomerEntity());
        mm.put("provinces", tblProvinceFacade.findAll());
        mm.put("districts", tblDistrictFacade.findAll());
        return "customer/create.jsp";
    }
    @RequestMapping(value = "/editcustomer/{id}", method = RequestMethod.GET)
   public String showedit(ModelMap mm, @PathVariable(value = "id") int id) {      
       CustomerEntity newcustomer = new CustomerEntity();
       TblCustomer customer = tblCustomerFacade.find(id);
        newcustomer.setCustomerFirstName(customer.getCustomerFirstName());
        newcustomer.setCustomerLastName(customer.getCustomerLastName());
        newcustomer.setCustomerAddress(customer.getCustomerAddress());
        newcustomer.setCustomerMobile(customer.getCustomerMobile());
        newcustomer.setCustomerEmail(customer.getCustomerEmail());
        newcustomer.setCustomerGender(customer.getCustomerGender());
        newcustomer.setCustomerBirthday(customer.getCustomerBirthday());      
        //newcustomer.setDistrictId(customer.getDistrictId());//cai nay sai
        newcustomer.setDistrictId(customer.getDistrictId().getDistrictId());
        //image
        newcustomer.setCustomerPicture(customer.getCustomerPicture());
        mm.put("customer", newcustomer);
        return "customer/edit.jsp";
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String create(@ModelAttribute(value = "customer")CustomerEntity customer,@RequestParam CommonsMultipartFile file,
            HttpSession session) throws FileNotFoundException, IOException {
        TblCustomer newcustomer = new TblCustomer();
        //newcustomer.setCustomerId(customer.getCustomerId());
        newcustomer.setCustomerFirstName(customer.getCustomerFirstName());
        newcustomer.setCustomerLastName(customer.getCustomerLastName());
        newcustomer.setCustomerAddress(customer.getCustomerAddress());
        newcustomer.setCustomerMobile(customer.getCustomerMobile());
        newcustomer.setCustomerEmail(customer.getCustomerEmail());
        newcustomer.setCustomerGender(customer.getCustomerGender());
        newcustomer.setCustomerBirthday(customer.getCustomerBirthday());      
        //newcustomer.setDistrictId(customer.getDistrictId());//cai nay sai
        newcustomer.setDistrictId(tblDistrictFacade.find(customer.getDistrictId()));
        //image
        String context = session.getServletContext().getRealPath("/") + File.separator + "images/" + File.separator + "customer";
        String filename = file.getOriginalFilename();
        if (filename.isEmpty()) {
            newcustomer.setCustomerPicture("adminnguyenhai.jpg");
        } else {
            byte[] bytes = file.getBytes();
            BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(
                    new File(context + File.separator + filename)));
            stream.write(bytes);
            stream.flush();
            stream.close();
            newcustomer.setCustomerPicture(""+filename);
        }
        
        tblCustomerFacade.create(newcustomer);
        return "redirect:/file/customer/viewall";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String edit(@ModelAttribute(value = "customer")CustomerEntity customer,@RequestParam CommonsMultipartFile file,
            HttpSession session) throws FileNotFoundException, IOException {
        TblCustomer newcustomer = new TblCustomer();
        newcustomer.setCustomerId(customer.getCustomerId());
        newcustomer.setCustomerFirstName(customer.getCustomerFirstName());
        newcustomer.setCustomerLastName(customer.getCustomerLastName());
        newcustomer.setCustomerAddress(customer.getCustomerAddress());
        newcustomer.setCustomerMobile(customer.getCustomerMobile());
        newcustomer.setCustomerEmail(customer.getCustomerEmail());
        newcustomer.setCustomerGender(customer.getCustomerGender());
        newcustomer.setCustomerBirthday(customer.getCustomerBirthday());
        //newcustomer.setDistrictId(customer.getDistrictId());
        //image
        String context = session.getServletContext().getRealPath("/") + File.separator + "images/" + File.separator + "customer";
        String filename = file.getOriginalFilename();
        if (filename.isEmpty()) {
            newcustomer.setCustomerPicture("adminnguyenhai.jpg");
        } else {
            byte[] bytes = file.getBytes();
            BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(
                    new File(context + File.separator + filename)));
            stream.write(bytes);
            stream.flush();
            stream.close();
            newcustomer.setCustomerPicture(""+filename);
        }
        
        tblCustomerFacade.edit(newcustomer);
        return "redirect:/file/customer/viewall";
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String delete(ModelMap mm, @PathVariable(value = "id") int id) {
        tblCustomerFacade.remove(tblCustomerFacade.find(id));
        return "redirect:/file/customer/viewall";
    }
    @RequestMapping(value = "/detail/{id}", method = RequestMethod.GET)
   public String detail(ModelMap mm, @PathVariable(value = "id") int id) {             
        mm.put("customer", tblCustomerFacade.find(id));
        return "customer/detail.jsp";
    }
    //json get data
    @RequestMapping(value = "/searchprovince", method = RequestMethod.GET)
    public @ResponseBody
    String searchprovince(HttpServletRequest request) {
        String idsearch = request.getParameter("ids");
        List<DistrictEntity> result = new ArrayList<>();                
        for (TblDistrict tbl : tblDistrictFacade.findAll()) {
            if (tbl.getProvinceId().getProvinceId()==Integer.parseInt(idsearch)) {
                result.add(new DistrictEntity(tbl.getDistrictId(), tbl.getDistrictName()));
                
            }
               // result.add(tbl);
        }
        ObjectMapper mapper = new ObjectMapper();
        String ajaxResponse = "";
        try {
            ajaxResponse = mapper.writeValueAsString(result);// thua de mai a coi thu ^^
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return ajaxResponse;
    }
    @RequestMapping(value = "/searchpro", method = RequestMethod.GET)
    public @ResponseBody
    String searchpro(HttpServletRequest request) {
        String idsearch = request.getParameter("ids");
        List<DistrictEntity> result = new ArrayList<>();
        
        
        for (TblDistrict tbl : tblDistrictFacade.findAll()) {
            if (tbl.getProvinceId().getProvinceId()==Integer.parseInt(idsearch)) {
                result.add(new DistrictEntity(tbl.getDistrictId(), tbl.getDistrictName()));
                
            }
               // result.add(tbl);
        }
        ObjectMapper mapper = new ObjectMapper();
        String ajaxResponse = "";
        try {
            ajaxResponse = mapper.writeValueAsString(result);// thua de mai a coi thu ^^
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return ajaxResponse;
    }
    

    private TblCustomerFacadeLocal lookupTblCustomerFacadeLocal() {
        try {
            Context c = new InitialContext();
            return (TblCustomerFacadeLocal) c.lookup("java:global/Project4/Project4-ejb/TblCustomerFacade!sb.TblCustomerFacadeLocal");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    private TblDistrictFacadeLocal lookupTblDistrictFacadeLocal() {
        try {
            Context c = new InitialContext();
            return (TblDistrictFacadeLocal) c.lookup("java:global/Project4/Project4-ejb/TblDistrictFacade!sb.TblDistrictFacadeLocal");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    private TblProvinceFacadeLocal lookupTblProvinceFacadeLocal() {
        try {
            Context c = new InitialContext();
            return (TblProvinceFacadeLocal) c.lookup("java:global/Project4/Project4-ejb/TblProvinceFacade!sb.TblProvinceFacadeLocal");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }
}
