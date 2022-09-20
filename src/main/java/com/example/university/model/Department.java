package com.example.university.model;

public class Department {
    private int id;
    private String name;
    private int head_id;


    public Department(String name, int head_id) {
        this.name = name;
        this.head_id = head_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getHead_id() {
        return head_id;
    }

    public void setHead_id(int head_id) {
        this.head_id = head_id;
    }
}
