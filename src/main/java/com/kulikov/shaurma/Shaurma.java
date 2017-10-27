package com.kulikov.shaurma;

import java.util.HashSet;
import java.util.Set;

public class Shaurma {
    private int id;
    private int ingredientsSetId;
    private String name;
    private Set ingredients = new HashSet();
    private Set orders = new HashSet();

    public Shaurma(){
    }

    public double getCosts(){

    return 0;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIngredientsSetId() {
        return ingredientsSetId;
    }

    public void setIngredientsSetId(int ingredientsSetId) {
        this.ingredientsSetId = ingredientsSetId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set getIngredients() {
        return ingredients;
    }

    public void setIngredients(Set ingredients) {
        this.ingredients = ingredients;
    }

    public Set getOrders() {
        return orders;
    }

    public void setOrders(Set orders) {
        this.orders = orders;
    }
}
