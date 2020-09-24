/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.TblMembership;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import model.MembershipEntity;
import org.springframework.stereotype.Repository;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import sb.TblMembershipFacadeLocal;

@Repository
@RequestMapping(value = "/membership")
public class MembershipController {

    TblMembershipFacadeLocal tblMembershipFacade = lookupTblMembershipFacadeLocal();
    
    @RequestMapping(value = "/viewall", method = RequestMethod.GET)
    public String viewall(ModelMap mm, HttpServletRequest request) {
        request.getSession().setAttribute("links", request.getContextPath());
        mm.put("memberships", tblMembershipFacade.findAll());
        mm.put("homepage", "membership");
        return "membership/viewall.jsp";
    }
    @RequestMapping(value = "/createmembership", method = RequestMethod.GET)
    public String showcreate(ModelMap mm, HttpServletRequest request) {
        mm.put("membership", new MembershipEntity());
        mm.put("memberships", tblMembershipFacade.findAll() );
       return "membership/create.jsp";
    }

    @RequestMapping(value = "/editmembership/{id}", method = RequestMethod.GET)
   public String showedit(ModelMap mm, @PathVariable(value = "id") int id) {       
        mm.put("membership", tblMembershipFacade.find(id));
        return "membership/edit.jsp";
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String create(@ModelAttribute(value = "membership")MembershipEntity membership) {
        TblMembership newmember = new TblMembership();
        newmember.setMembershipDetail(membership.getMembershipDetail());
        newmember.setMembershipTotal(membership.getMembershipTotal());
        newmember.setMembershipPercentOut(membership.getMembershipPercentOut());
        tblMembershipFacade.create(newmember);
        return "redirect:/file/membership/viewall";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String edit(@ModelAttribute(value = "membership") TblMembership membership) {
        tblMembershipFacade.edit(membership);
        return "redirect:/file/membership/viewall";
    }

    @RequestMapping(value = "/detail/{id}", method = RequestMethod.GET)
    public String delete(ModelMap mm, @PathVariable(value = "id") int id) {
        mm.put("membership", tblMembershipFacade.find(id));
        return "membership/detail.jsp";
    }
    private TblMembershipFacadeLocal lookupTblMembershipFacadeLocal() {
        try {
            Context c = new InitialContext();
            return (TblMembershipFacadeLocal) c.lookup("java:global/Project4/Project4-ejb/TblMembershipFacade!sb.TblMembershipFacadeLocal");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }
}
