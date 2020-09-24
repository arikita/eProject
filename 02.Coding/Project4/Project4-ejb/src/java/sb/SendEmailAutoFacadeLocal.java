/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sb;

import entity.SendEmailAuto;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Windows 18
 */
@Local
public interface SendEmailAutoFacadeLocal {

    void create(SendEmailAuto sendEmailAuto);

    void edit(SendEmailAuto sendEmailAuto);

    void remove(SendEmailAuto sendEmailAuto);

    SendEmailAuto find(Object id);

    List<SendEmailAuto> findAll();

    List<SendEmailAuto> findRange(int[] range);

    int count();
    
}
