/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.SendEmailDal;
import java.util.ArrayList;
import java.util.List;
import model.EmailEntity;
import org.apache.commons.mail.EmailException;

import org.springframework.stereotype.Repository;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Windows 18
 */
@Repository
@RequestMapping(value = "/email")
public class SendEmailController {

    @RequestMapping(value = "/emailadmin", method = RequestMethod.GET)
    public String viewalltest(ModelMap mm) {
        mm.put("sendme", new EmailEntity());
        mm.put("homepage", "sendemail");
        return "sendemail/send.jsp";
    }

    @RequestMapping(value = "/sendadmin", method = RequestMethod.POST)
    public String viewall(ModelMap mm, @ModelAttribute(value = "sendme") EmailEntity emails) throws EmailException {
        String to = "nguyenhai0406@gmail.com"; //mail_text.getText();
        String to1 = "abs@gmail.com";
        String to2 = "phuocson1781@gmail.com"; //mail_text.getText();
        String subject = emails.getSubject();//sub_text.getText();
        String message = emails.getMessend();//msg_text.getText();

        String user = "project4HHTTB@gmail.com";
        String pass = "Hai04061988";

        List<String> listto = new ArrayList<String>();
        listto.add(to);
        listto.add(to1);
        listto.add(to2);
        String[] stringArray = listto.stream().toArray(String[]::new);
        mm.put("chude", emails.getSubject());
        mm.put("abcd", emails.getMessend());
        //SendemailDal.send(to, subject, message, user, pass);
        SendEmailDal.send(stringArray, subject, message, user, pass);
        return "sendemail/success.jsp";
        //return "success";
    }
}
