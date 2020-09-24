/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import javax.persistence.Column;


public class SizeEntity {
    @Column(name = "size_id")
    private Integer sizeId;
    @Column(name = "size_size")
    private Integer sizeSize;
    @Column(name = "size_con")
    private Integer sizeconfirm;

    public SizeEntity() {
    }

    public SizeEntity(Integer sizeId, Integer sizeSize, Integer sizeconfirm) {
        this.sizeId = sizeId;
        this.sizeSize = sizeSize;
        this.sizeconfirm = sizeconfirm;
    }

    /**
     * @return the sizeId
     */
    public Integer getSizeId() {
        return sizeId;
    }

    /**
     * @param sizeId the sizeId to set
     */
    public void setSizeId(Integer sizeId) {
        this.sizeId = sizeId;
    }

    /**
     * @return the sizeSize
     */
    public Integer getSizeSize() {
        return sizeSize;
    }

    /**
     * @param sizeSize the sizeSize to set
     */
    public void setSizeSize(Integer sizeSize) {
        this.sizeSize = sizeSize;
    }

    /**
     * @return the sizeconfirm
     */
    public Integer getSizeconfirm() {
        return sizeconfirm;
    }

    /**
     * @param sizeconfirm the sizeconfirm to set
     */
    public void setSizeconfirm(Integer sizeconfirm) {
        this.sizeconfirm = sizeconfirm;
    }
    
}
