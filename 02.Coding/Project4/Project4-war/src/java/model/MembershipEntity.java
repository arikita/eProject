/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import javax.persistence.Column;
import javax.validation.constraints.Size;

/**
 *
 * @author VĂN BÌNH
 */
public class MembershipEntity {
    @Column(name = "membership_id")
    private Integer membershipId;
    @Column(name = "membership_detail")
    private String membershipDetail;
    @Column(name = "membership_total")
    private Integer membershipTotal;
    @Column(name = "membership_percent_out")
    private String membershipPercentOut;

    public MembershipEntity() {
    }

    public MembershipEntity(Integer membershipId, String membershipDetail, Integer membershipTotal, String membershipPercentOut) {
        this.membershipId = membershipId;
        this.membershipDetail = membershipDetail;
        this.membershipTotal = membershipTotal;
        this.membershipPercentOut = membershipPercentOut;
    }

    /**
     * @return the membershipId
     */
    public Integer getMembershipId() {
        return membershipId;
    }

    /**
     * @param membershipId the membershipId to set
     */
    public void setMembershipId(Integer membershipId) {
        this.membershipId = membershipId;
    }

    /**
     * @return the membershipDetail
     */
    public String getMembershipDetail() {
        return membershipDetail;
    }

    /**
     * @param membershipDetail the membershipDetail to set
     */
    public void setMembershipDetail(String membershipDetail) {
        this.membershipDetail = membershipDetail;
    }

    /**
     * @return the membershipTotal
     */
    public Integer getMembershipTotal() {
        return membershipTotal;
    }

    /**
     * @param membershipTotal the membershipTotal to set
     */
    public void setMembershipTotal(Integer membershipTotal) {
        this.membershipTotal = membershipTotal;
    }

    /**
     * @return the membershipPercentOut
     */
    public String getMembershipPercentOut() {
        return membershipPercentOut;
    }

    /**
     * @param membershipPercentOut the membershipPercentOut to set
     */
    public void setMembershipPercentOut(String membershipPercentOut) {
        this.membershipPercentOut = membershipPercentOut;
    }
    
}
