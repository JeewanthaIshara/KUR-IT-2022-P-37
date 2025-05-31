package model;

import java.util.Date;

public class Employee {
    private int id;
    private String firstName;
    private String lastName;
    private String email;
    private String phone;
    private String department;
    private String position;
    private Date joinDate;
    private double salary;
    private String address;
    private String status;

    // Default constructor
    public Employee() {}

    // Full constructor
    public Employee(int id, String first_Name, String last_Name, String email, 
                   String phone, String department, String position, Date joinDate, 
                   double salary, String address, String status) {
        this.id = id;
        this.firstName = first_Name;
        this.lastName = last_Name;
        this.email = email;
        this.phone = phone;
        this.department = department;
        this.position = position;
        this.joinDate = joinDate;
        this.salary = salary;
        this.address = address;
        this.status = status;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String first_Name) {
        this.firstName = first_Name;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String last_Name) {
        this.lastName = last_Name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public Date getJoinDate() {
        return joinDate;
    }

    public void setJoinDate(Date joinDate) {
        this.joinDate = joinDate;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    // Helper method to get full name
    public String getFullName() {
        return firstName + " " + lastName;
    }
}