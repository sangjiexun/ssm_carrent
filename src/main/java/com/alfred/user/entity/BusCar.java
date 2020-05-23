package com.alfred.user.entity;

import java.math.BigDecimal;
import java.util.Date;
import java.io.Serializable;
import java.util.Objects;

/**
 * (BusCar)实体类
 *
 * @author makejava
 * @since 2020-05-22 20:35:29
 */
public class BusCar implements Serializable {
    private static final long serialVersionUID = 981890028158351375L;
    
    private String carnumber;
    
    private String cartype;
    
    private String color;
    
    private BigDecimal price;
    
    private Double rentprice;
    
    private Double deposit;
    
    private Integer isrenting;
    
    private String description;
    
    private String carimg;
    
    private Date createtime;


    public String getCarnumber() {
        return carnumber;
    }

    public void setCarnumber(String carnumber) {
        this.carnumber = carnumber;
    }

    public String getCartype() {
        return cartype;
    }

    public void setCartype(String cartype) {
        this.cartype = cartype;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public Double getRentprice() {
        return rentprice;
    }

    public void setRentprice(Double rentprice) {
        this.rentprice = rentprice;
    }

    public Double getDeposit() {
        return deposit;
    }

    public void setDeposit(Double deposit) {
        this.deposit = deposit;
    }

    public Integer getIsrenting() {
        return isrenting;
    }

    public void setIsrenting(Integer isrenting) {
        this.isrenting = isrenting;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCarimg() {
        return carimg;
    }

    public void setCarimg(String carimg) {
        this.carimg = carimg;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        BusCar busCar = (BusCar) o;
        return Objects.equals(carnumber, busCar.carnumber) &&
                Objects.equals(cartype, busCar.cartype) &&
                Objects.equals(color, busCar.color) &&
                Objects.equals(price, busCar.price) &&
                Objects.equals(rentprice, busCar.rentprice) &&
                Objects.equals(deposit, busCar.deposit) &&
                Objects.equals(isrenting, busCar.isrenting) &&
                Objects.equals(description, busCar.description) &&
                Objects.equals(carimg, busCar.carimg) &&
                Objects.equals(createtime, busCar.createtime);
    }

    @Override
    public int hashCode() {
        return Objects.hash(carnumber, cartype, color, price, rentprice, deposit, isrenting, description, carimg, createtime);
    }

    @Override
    public String toString() {
        return "BusCar{" +
                "carnumber='" + carnumber + '\'' +
                ", cartype='" + cartype + '\'' +
                ", color='" + color + '\'' +
                ", price=" + price +
                ", rentprice=" + rentprice +
                ", deposit=" + deposit +
                ", isrenting=" + isrenting +
                ", description='" + description + '\'' +
                ", carimg='" + carimg + '\'' +
                ", createtime=" + createtime +
                '}';
    }
}