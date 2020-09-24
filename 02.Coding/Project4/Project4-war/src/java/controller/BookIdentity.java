/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import entity.BookIdentityVn;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
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
import sb.BookIdentityVnFacadeLocal;

@Repository
@RequestMapping(value = "/book")
public class BookIdentity {

    BookIdentityVnFacadeLocal bookIdentityVnFacade = lookupBookIdentityVnFacadeLocal();

    @RequestMapping(value = "/viewall", method = RequestMethod.GET)
    public String viewall(ModelMap mm, HttpServletRequest request) {
        mm.put("books", bookIdentityVnFacade.findAll());
        mm.put("homepage", "book");
        return "book/viewall.jsp";
    }

    @RequestMapping(value = "/createbook", method = RequestMethod.GET)
    public String showcreate(ModelMap mm, HttpServletRequest request) {
        mm.put("book", new BookIdentityVn());
        //mm.put("books", bookIdentityVnFacade.findAll() );
        return "book/create.jsp";
    }

    @RequestMapping(value = "/editbook/{id}", method = RequestMethod.GET)
    public String showedit(ModelMap mm, @PathVariable(value = "id") int id) {
        mm.put("book", bookIdentityVnFacade.find(id));
        return "book/edit.jsp";
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String create(@ModelAttribute(value = "book") BookIdentityVn book) {
        book.setPrice(book.getPrice().setScale(2, BigDecimal.ROUND_UP));//Conver to Bigdecimal
        bookIdentityVnFacade.create(book);
        return "redirect:/file/book/viewall";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String edit(@ModelAttribute(value = "book") BookIdentityVn book) {
        bookIdentityVnFacade.edit(book);
        return "redirect:/file/book/viewall";
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String delete(ModelMap mm, @PathVariable(value = "id") int id) {
        bookIdentityVnFacade.remove(bookIdentityVnFacade.find(id));
        return "redirect:/file/book/viewall";
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String listaaa(ModelMap mm, HttpServletRequest request) {
        mm.put("books", bookIdentityVnFacade.findAll());
        request.getSession().setAttribute("books", bookIdentityVnFacade.findAll());
        BookIdentityVn book = null;
        for (BookIdentityVn b : bookIdentityVnFacade.findAll()) {
            if (b.getId() == 15) {
                book = b;
                break;
            }
        }
        request.getSession().setAttribute("booksearch", book);
        return null;
    }

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public @ResponseBody
    String searchPerson(HttpServletRequest request) {
        String query = request.getParameter("name");
        BookIdentityVn book = null;
        for (BookIdentityVn b : bookIdentityVnFacade.findAll()) {
            if (b.getId() == 1) {
                book = b;
                break;
            }
        }

        ObjectMapper mapper = new ObjectMapper();
        String ajaxResponse = "";
        try {
            ajaxResponse = mapper.writeValueAsString(book);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }

        return ajaxResponse;
    }

    private BookIdentityVnFacadeLocal lookupBookIdentityVnFacadeLocal() {
        try {
            Context c = new InitialContext();
            return (BookIdentityVnFacadeLocal) c.lookup("java:global/Project4/Project4-ejb/BookIdentityVnFacade!sb.BookIdentityVnFacadeLocal");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

}
