/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import org.apache.commons.mail.DefaultAuthenticator;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.HtmlEmail;

/**
 *
 * @author Windows 18
 */
public class SendEmailDal {
    public static void send(String[] to, String sub, String msg, final String user, final String pass) throws EmailException {
        
        HtmlEmail htmlEmail = new HtmlEmail();
        htmlEmail.setHostName("smtp.gmail.com");
        htmlEmail.setSmtpPort(587);
        htmlEmail.setDebug(true);
        htmlEmail.setAuthenticator(new DefaultAuthenticator(user, pass));
        htmlEmail.setTLS(true);
        //htmlEmail.addTo(to, "recipient");
        htmlEmail.addTo(to);
        htmlEmail.setFrom(user, "Project");
        htmlEmail.setSubject(sub);
        htmlEmail.setHtmlMsg(msg);
        htmlEmail.send();
        

    }
}
