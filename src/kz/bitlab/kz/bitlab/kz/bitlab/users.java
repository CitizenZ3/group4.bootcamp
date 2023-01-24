package kz.bitlab.kz.bitlab.kz.bitlab;

import java.util.ArrayList;

public class users {
    String name;
    String surname;
    String department;
    int salary;

    public users(){
        this.name="No name";
        this.surname="No surname";
        this.department="No department";
        this.salary=0;

    }
    public users(String name,String surname,String department,int salary){
        this.name=name;
        this.surname=surname;
        this.department=department;
        this.salary=salary;
    }
    public void addUsers (users worker){
        ArrayList<users> Users=new ArrayList<>();
        Users.add(worker);
    }



}
