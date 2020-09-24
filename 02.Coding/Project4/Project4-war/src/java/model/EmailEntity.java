/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Windows 18
 */
public class EmailEntity {
    private String messend;
    private String subject;

    public EmailEntity() {
    }

    public EmailEntity(String messend, String subject) {
        this.messend = messend;
        this.subject = subject;
    }

    
    /**
     * @return the messend
     */
    public String getMessend() {
        return messend;
    }

    /**
     * @param messend the messend to set
     */
    public void setMessend(String messend) {
        this.messend = messend;
    }

    /**
     * @return the subject
     */
    public String getSubject() {
        return subject;
    }

    /**
     * @param subject the subject to set
     */
    public void setSubject(String subject) {
        this.subject = subject;
    }

    
}
