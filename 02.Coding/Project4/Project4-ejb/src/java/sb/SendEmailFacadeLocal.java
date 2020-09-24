/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sb;

import entity.SendEmail;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author VĂN BÌNH
 */
@Local
public interface SendEmailFacadeLocal {

    void create(SendEmail sendEmail);

    void edit(SendEmail sendEmail);

    void remove(SendEmail sendEmail);

    SendEmail find(Object id);

    List<SendEmail> findAll();

    List<SendEmail> findRange(int[] range);

    int count();
    
}
