/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.TblVoucher;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import model.VoucherEntity;
import org.springframework.stereotype.Repository;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import sb.TblVoucherFacadeLocal;

@Repository
@RequestMapping(value = "/voucher")
public class VoucherController {

    TblVoucherFacadeLocal tblVoucherFacade = lookupTblVoucherFacadeLocal();
    
    @RequestMapping(value = "/viewall", method = RequestMethod.GET)
    public String viewall(ModelMap mm, HttpServletRequest request) {
        request.getSession().setAttribute("links", request.getContextPath());
        mm.put("vouchers", tblVoucherFacade.findAll());
        mm.put("homepage", "voucher");
        return "voucher/viewall.jsp";
    }
    @RequestMapping(value = "/createvoucher", method = RequestMethod.GET)
    public String showcreate(ModelMap mm, HttpServletRequest request) {
        mm.put("voucher", new VoucherEntity());
        mm.put("vouchers", tblVoucherFacade.findAll() );
       return "voucher/create.jsp";
    }

    @RequestMapping(value = "/editvoucher/{id}", method = RequestMethod.GET)
   public String showedit(ModelMap mm, @PathVariable(value = "id") int id) {
       
        mm.put("voucher", tblVoucherFacade.find(id));
        return "voucher/edit.jsp";
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String create(@ModelAttribute(value = "color")TblVoucher voucher) {
        tblVoucherFacade.create(voucher);
        return "redirect:/file/voucher/viewall";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String edit(@ModelAttribute(value = "color") TblVoucher voucher) {
        tblVoucherFacade.edit(voucher);
        return "redirect:/file/voucher/viewall";
    }

    @RequestMapping(value = "/detail/{id}", method = RequestMethod.GET)
    public String delete(ModelMap mm, @PathVariable(value = "id") int id) {
        mm.put("voucher", tblVoucherFacade.find(id));
        return "voucher/detail.jsp";
    }
    private TblVoucherFacadeLocal lookupTblVoucherFacadeLocal() {
        try {
            Context c = new InitialContext();
            return (TblVoucherFacadeLocal) c.lookup("java:global/Project4/Project4-ejb/TblVoucherFacade!sb.TblVoucherFacadeLocal");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }
}
