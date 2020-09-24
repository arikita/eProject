/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import entity.TblSize;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import model.SizeEntity;
import org.springframework.stereotype.Repository;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import sb.TblSizeFacadeLocal;

@Repository
@RequestMapping(value = "/size")
public class SizeController {

    TblSizeFacadeLocal tblSizeFacade = lookupTblSizeFacadeLocal();

    @RequestMapping(value = "/viewall", method = RequestMethod.GET)
    public String viewall(ModelMap mm, HttpServletRequest request) {
        mm.put("sizes", tblSizeFacade.findAll());
        mm.put("homepage", "size");
        return "size/viewall.jsp";
    }

    @RequestMapping(value = "/createsize", method = RequestMethod.GET)
    public String showcreate(ModelMap mm, HttpServletRequest request) {
        mm.put("size", new SizeEntity());
        mm.put("sizes", tblSizeFacade.findAll());
        return "size/create.jsp";
    }

    @RequestMapping(value = "/editsize/{id}", method = RequestMethod.GET)
    public String showedit(ModelMap mm, @PathVariable(value = "id") int id) {
        SizeEntity editsize = new SizeEntity(tblSizeFacade.find(id).getSizeId(), tblSizeFacade.find(id).getSizeSize(),0);
        mm.put("size", editsize);
        return "size/edit.jsp";
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String create(@ModelAttribute(value = "size") SizeEntity size) {
        TblSize newsize = new TblSize();
        newsize.setSizeSize(size.getSizeSize());
        tblSizeFacade.create(newsize);
        return "redirect:/file/size/viewall";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String edit(@ModelAttribute(value = "size") TblSize size) {
        tblSizeFacade.edit(size);
        return "redirect:/file/size/viewall";
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String delete(ModelMap mm, @PathVariable(value = "id") int id) {
        tblSizeFacade.remove(tblSizeFacade.find(id));
        return "redirect:/file/size/viewall";
    }
    //json get data

    @RequestMapping(value = "/searchprovince", method = RequestMethod.GET)
    public @ResponseBody
    String searchprovince(HttpServletRequest request) {
        String idsearch = request.getParameter("ids");// truyen size

        String result = "";

        for (TblSize tbl : tblSizeFacade.findAll()) {
            if (tbl.getSizeSize() == Integer.parseInt(idsearch)) {
                result = tbl.getSizeSize().toString();
                break;
            }
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
        String sizesearch = request.getParameter("sizeedit");// truyen size
        String idedit = request.getParameter("idedit");//truyen id
        String result = "";
        for (TblSize tbl : tblSizeFacade.findAll()) {
            if (tbl.getSizeId() == Integer.parseInt(idedit) && tbl.getSizeSize() == Integer.parseInt(sizesearch)) {
                result = "";
                break;
            } else {
                if (tbl.getSizeSize() == Integer.parseInt(sizesearch)) {
                    result = tbl.getSizeSize().toString();
                    break;
                }
            }
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

    private TblSizeFacadeLocal lookupTblSizeFacadeLocal() {
        try {
            Context c = new InitialContext();
            return (TblSizeFacadeLocal) c.lookup("java:global/Project4/Project4-ejb/TblSizeFacade!sb.TblSizeFacadeLocal");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

}
