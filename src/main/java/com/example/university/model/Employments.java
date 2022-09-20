package com.example.university.model;

public class Employments {
    private int lector_id;
    private int department_id;

    protected Employments(int lector_id, int department_id){
        this.lector_id = lector_id;
        this.department_id = department_id;
    }

    protected Employments(){

    }

    public int getLector_id() {
        return lector_id;
    }

    public void setLector_id(int lector_id) {
        this.lector_id = lector_id;
    }

    public int getDepartment_id() {
        return department_id;
    }

    public void setDepartment_id(int department_id) {
        this.department_id = department_id;
    }
}
