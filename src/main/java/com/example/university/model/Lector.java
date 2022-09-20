package com.example.university.model;

public class Lector {
    private int id;
    private String name;
    private int salary;
    private int degree_id;


    protected Lector(String name, int salary, int degree_id){
        this.name = name;
        this.salary = salary;
        this.degree_id = degree_id;
    }

    protected Lector(){

    }

    @Override
    public String toString() {
        return "Lector [" + name + ", " + salary + ", " + degree_id + "]";
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

    public int getDegree_id() {
        return degree_id;
    }

    public int getSalary() {
        return salary;
    }

    public void setDegree_id(int degree_id) {
        this.degree_id = degree_id;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }
}
