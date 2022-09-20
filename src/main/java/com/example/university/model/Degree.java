package com.example.university.model;

public class Degree {
    private int id;
    private String name;

    protected Degree(String name){
        this.name = name;
    }

    protected Degree(){

    }

    @Override
    public String toString() {
        return "Degree [" + name + "]";
    }

    public int getId() {
        return id;
    }

    public String getName(){
        return name;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }
}
