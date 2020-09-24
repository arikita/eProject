/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import entity.TblColor;
import java.math.BigDecimal;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Repository;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import sb.TblColorFacadeLocal;
import model.ColorEntity;

@Repository
@RequestMapping(value = "/color")
public class ColorController {

    TblColorFacadeLocal tblColorFacade = lookupTblColorFacadeLocal();
    
    @RequestMapping(value = "/viewall", method = RequestMethod.GET)
    public String viewall(ModelMap mm, HttpServletRequest request) {
        mm.put("colors", tblColorFacade.findAll());
        mm.put("homepage", "color");
        return "color/viewall.jsp";
    }

    @RequestMapping(value = "/createcolor", method = RequestMethod.GET)
    public String showcreate(ModelMap mm, HttpServletRequest request) {
        mm.put("color", new ColorEntity());
        mm.put("colors", tblColorFacade.findAll() );
       return "color/create.jsp";
    }

    @RequestMapping(value = "/editcolor/{id}", method = RequestMethod.GET)
   public String showedit(ModelMap mm, @PathVariable(value = "id") int id) {
       
        mm.put("color", tblColorFacade.find(id));
        return "color/edit.jsp";
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String create(@ModelAttribute(value = "color")TblColor color) {
        tblColorFacade.create( color);
        return "redirect:/file/color/viewall";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String edit(@ModelAttribute(value = "color") TblColor color) {
        tblColorFacade.edit(color);
        return "redirect:/file/color/viewall";
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String delete(ModelMap mm, @PathVariable(value = "id") int id) {
        tblColorFacade.remove(tblColorFacade.find(id));
        return "redirect:/file/color/viewall";
    }
    
    

    private TblColorFacadeLocal lookupTblColorFacadeLocal() {
        try {
            Context c = new InitialContext();
            return (TblColorFacadeLocal) c.lookup("java:global/Project4/Project4-ejb/TblColorFacade!sb.TblColorFacadeLocal");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }
    
}
