/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import entity.TblAdmin;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import model.AdminEntity;
import org.springframework.stereotype.Repository;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import sb.TblAdminFacadeLocal;

@Repository
@RequestMapping(value = "/admin")
public class AdminController {

    TblAdminFacadeLocal tblAdminFacade = lookupTblAdminFacadeLocal();

    @RequestMapping(value = "/viewall", method = RequestMethod.GET)
    public String viewall(ModelMap mm, HttpServletRequest request) {
        request.getSession().setAttribute("links", request.getContextPath());
        mm.put("admins", tblAdminFacade.findAll());
        mm.put("homepage", "admin");
        return "admin/viewall.jsp";
    }

    @RequestMapping(value = "/createadmin", method = RequestMethod.GET)
    public String showcreate(ModelMap mm, HttpServletRequest request) {
        mm.put("admin", new AdminEntity());
        return "admin/create.jsp";
    }

    @RequestMapping(value = "/editadmin/{id}", method = RequestMethod.GET)
    public String showedit(ModelMap mm, @PathVariable(value = "id") int id) {
        TblAdmin result = tblAdminFacade.find(id);
        AdminEntity adminedit = new AdminEntity();
        adminedit.setAdminId(result.getAdminId());
        adminedit.setAdminName(result.getAdminName());
        adminedit.setAdminEmail(result.getAdminEmail());
        adminedit.setAdminUsername(result.getAdminUsername());
        adminedit.setAdminPassword(result.getAdminPassword());
        adminedit.setAdminMobile(result.getAdminMobile());
        adminedit.setAdminPicture(result.getAdminPicture());
        adminedit.setAdminGender(result.getAdminGender());
        adminedit.setAdminBirthday(result.getAdminBirthday());
        adminedit.setAdminRole(result.getAdminRole());
        adminedit.setAdminRoleAll(result.getAdminRoleAll());
        adminedit.setAdminLanguage(result.getAdminLanguage());
        mm.put("admin", adminedit);
        return "admin/edit.jsp";
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String create(@ModelAttribute(value = "admin") AdminEntity admin, @RequestParam CommonsMultipartFile file,
            HttpSession session) throws FileNotFoundException, IOException {
        TblAdmin newadmin = new TblAdmin();
        newadmin.setAdminName(admin.getAdminName());
        newadmin.setAdminEmail(admin.getAdminEmail());
        newadmin.setAdminUsername(admin.getAdminUsername());
        newadmin.setAdminPassword(admin.getAdminPassword());
        newadmin.setAdminMobile(admin.getAdminMobile());
        newadmin.setAdminGender(admin.getAdminGender());
        newadmin.setAdminBirthday(admin.getAdminBirthday());
        newadmin.setAdminRole(2);
        newadmin.setAdminLanguage(1);//1 is english
        newadmin.setAdminRoleAll("A2,B2,C2,D2,E2,F2,G2,H2,I2,J2,K2,L2,M2,N2,O2,P2,Q2,R2,S2,T2,U2,V2,W2,X2,Y2,Z2");
        //image file---------
        String context = session.getServletContext().getRealPath("/") + File.separator + "images/" + File.separator + "admin";
        String filename = file.getOriginalFilename();
        if (filename.isEmpty()) {
            newadmin.setAdminPicture("adminimage.jpg");
        } else {
            /*File uploadDir = new File(context);
            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }*/
            byte[] bytes = file.getBytes();
            BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(
                    new File(context + File.separator + filename)));
            stream.write(bytes);
            stream.flush();
            stream.close();
            newadmin.setAdminPicture("" + filename);
        }
        //---- end file image ------------
        tblAdminFacade.create(newadmin);
        return "redirect:/file/admin/viewall";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String edit(@ModelAttribute(value = "admin")AdminEntity admin,@RequestParam CommonsMultipartFile file,
            HttpSession session) throws FileNotFoundException, IOException {
        TblAdmin newadmin = new TblAdmin();
        newadmin.setAdminId(admin.getAdminId());
        newadmin.setAdminName(admin.getAdminName());
        newadmin.setAdminEmail(admin.getAdminEmail());
        newadmin.setAdminUsername(admin.getAdminUsername());
        newadmin.setAdminPassword(admin.getAdminPassword());
        newadmin.setAdminMobile(admin.getAdminMobile());
        newadmin.setAdminGender(admin.getAdminGender());
        newadmin.setAdminBirthday(admin.getAdminBirthday());
        newadmin.setAdminRole(admin.getAdminRole());
        newadmin.setAdminLanguage(admin.getAdminLanguage());//1 is english
        newadmin.setAdminRoleAll(admin.getAdminRoleAll());
        //image
        String context = session.getServletContext().getRealPath("/") + File.separator + "images/" + File.separator + "admin";
        String filename = file.getOriginalFilename();
        if (filename.isEmpty()) {
            newadmin.setAdminPicture(admin.getAdminPicture());
        } else {
            byte[] bytes = file.getBytes();
            BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(
                    new File(context + File.separator + filename)));
            stream.write(bytes);
            stream.flush();
            stream.close();
            newadmin.setAdminPicture(""+filename);
        }
        
        tblAdminFacade.edit(newadmin);
        return "redirect:/file/admin/viewall";
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String delete(ModelMap mm, @PathVariable(value = "id") int id) {
        tblAdminFacade.remove(tblAdminFacade.find(id));
        return "redirect:/file/admin/viewall";
    }
   
    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public @ResponseBody
    String searchPerson(HttpServletRequest request) {
        String username = request.getParameter("username");
        TblAdmin result = new TblAdmin();
        for (TblAdmin tblAdmin : tblAdminFacade.findAll()) {
            if (tblAdmin.getAdminUsername().toUpperCase().equals(username.toUpperCase())) {
                result=tblAdmin;
            }
        }
        ObjectMapper mapper = new ObjectMapper();
        String ajaxResponse = "";
        try {
            ajaxResponse = mapper.writeValueAsString(result);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return ajaxResponse;
    }

    private TblAdminFacadeLocal lookupTblAdminFacadeLocal() {
        try {
            Context c = new InitialContext();
            return (TblAdminFacadeLocal) c.lookup("java:global/Project4/Project4-ejb/TblAdminFacade!sb.TblAdminFacadeLocal");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

}
