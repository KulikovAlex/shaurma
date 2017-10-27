package com.kulikov.shaurma;

import java.util.HashSet;
import java.util.Set;

public class Order {
    private String orderNumber;
    private double totalCosts;
    private String ordercol;
    private Set shaurmas = new HashSet();

    public Order(){
    }

    public String getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(String orderNumber) {
        this.orderNumber = orderNumber;
    }

    public double getTotalCosts() {
        return totalCosts;
    }

    public void setTotalCosts(double totalCosts) {
        this.totalCosts = totalCosts;
    }

    public String getOrdercol() {
        return ordercol;
    }

    public void setOrdercol(String ordercol) {
        this.ordercol = ordercol;
    }

    public Set getShaurmas() {
        return shaurmas;
    }

    public void setShaurmas(Set shaurmas) {
        this.shaurmas = shaurmas;
    }
}
