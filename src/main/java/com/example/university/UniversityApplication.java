package com.example.university;

import com.example.university.model.Lector;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;
import java.util.Scanner;
import java.util.stream.Collectors;

@SpringBootApplication
public class UniversityApplication implements CommandLineRunner {

    @Autowired
    public JdbcTemplate jdbcTemplate;

    public static void main(String[] args) {
        SpringApplication.run(UniversityApplication.class, args);
    }

    @Override
    public void run(String... args) throws Exception {
        Scanner scanner = new Scanner(System.in);

        String command = scanner.nextLine().trim();

        if (command.startsWith("Who is head of department")) {
            String departmentName = command.split(" ")[5];
            System.out.println("Head of " + departmentName + " department is " + getDepartmentHeadName(departmentName));

        } else if (command.startsWith("Show") && command.endsWith("statistics")) {
            String departmentName = command.split(" ")[1];
            System.out.println(getDepartmentStatistics(departmentName));

        } else if (command.startsWith("Show the average salary for the department")) {
            String departmentName = command.split(" ")[7];
            System.out.println("The average salary of " + departmentName + " is " + getAverageSalary(departmentName));

        } else if (command.startsWith("Show count of employee for")) {
            String dpName = command.split(" ")[5];
            System.out.println(getEmployeesCount(dpName) + "");

        } else if (command.startsWith("Global search by")) {
            String template = command.split(" ")[3];
            List<String> results = globalSearch(template);
            StringBuilder output = new StringBuilder();
            String start = "";
            for (String result : results) {
                if (output.length() > 0) {
                    start = ", ";
                }
                output.append(start).append(result);
            }
            System.out.println(output);
        } else {
            System.out.println("There is no answer. Try again!");
        }
    }


    // task 1
    private String getDepartmentHeadName(String departmentName) {
        String sql = "SELECT l.name FROM department AS d " +
                "JOIN lector AS l ON d.head_id = l.id WHERE d.name = " + '"' + departmentName + '"';
        Lector lector = jdbcTemplate.queryForObject(sql,
                BeanPropertyRowMapper.newInstance(Lector.class));
        return lector.getName();
    }


    // task 2
    private String getDepartmentStatistics(String departmentName) {
        return "assistants - " + getAssistantCount(departmentName) + System.lineSeparator() +
                "associate professors - " + getAssociateProfessorsCount(departmentName) + System.lineSeparator() +
                "professors - " + getProfessorsCount(departmentName);
    }

    private int getProfessorsCount(String departmentName) {
        String sql = "SELECT COUNT(DISTINCT l.name) FROM department AS dp" +
                " RIGHT JOIN employments AS e ON dp.id = e.department_id" +
                " LEFT JOIN lector AS l ON e.lector_id = l.id" +
                " LEFT JOIN degree AS dg ON l.degree_id = dg.id" +
                " WHERE dg.name = " + '"' + "professor" + '"' + " AND dp.name = " + '"' + departmentName + '"';
        return jdbcTemplate.queryForObject(sql, Integer.class);
    }

    private int getAssociateProfessorsCount(String departmentName) {
        String sql = "SELECT COUNT(DISTINCT l.name) FROM department AS dp" +
                " RIGHT JOIN employments AS e ON dp.id = e.department_id" +
                " LEFT JOIN lector AS l ON e.lector_id = l.id" +
                " LEFT JOIN degree AS dg ON l.degree_id = dg.id" +
                " WHERE dg.name = " + '"' + "associate professor" + '"' + " AND dp.name = " + '"' + departmentName + '"';
        return jdbcTemplate.queryForObject(sql, Integer.class);
    }

    private Integer getAssistantCount(String departmentName) {
        String sql = "SELECT COUNT(DISTINCT l.name) FROM department AS dp" +
                " RIGHT JOIN employments AS e ON dp.id = e.department_id" +
                " LEFT JOIN lector AS l ON e.lector_id = l.id" +
                " LEFT JOIN degree AS dg ON l.degree_id = dg.id" +
                " WHERE dg.name = " + '"' + "assistant" + '"' + " AND dp.name = " + '"' + departmentName + '"';
        return jdbcTemplate.queryForObject(sql, Integer.class);
    }


    // task 3
    private Float getAverageSalary(String departmentName) {
        String sql = "SELECT AVG(l.salary) FROM department AS dp" +
                " RIGHT JOIN employments AS e ON dp.id = e.department_id" +
                " LEFT JOIN lector AS l ON e.lector_id = l.id" +
                " LEFT JOIN `degree` AS dg ON l.degree_id = dg.id" +
                " WHERE dp.name =" + '"' + departmentName + '"';
        return jdbcTemplate.queryForObject(sql, Float.class);
    }


    // task 4
    private Integer getEmployeesCount(String departmentName) {
        String sql = "SELECT COUNT(l.name) FROM department AS dp" +
                " RIGHT JOIN employments AS e ON dp.id = e.department_id" +
                " LEFT JOIN lector AS l ON e.lector_id = l.id" +
                " LEFT JOIN `degree` AS dg ON l.degree_id = dg.id" +
                " WHERE dp.name = " + '"' + departmentName + '"';
        return jdbcTemplate.queryForObject(sql, Integer.class);
    }


    // task 5
    private List<String> globalSearch(String template) {
        String sql = "SELECT name FROM lector WHERE name LIKE" + "'%" + template + "%'";

        List<Lector> lectorList = jdbcTemplate.query(sql,
                BeanPropertyRowMapper.newInstance(Lector.class));

        return lectorList.stream().map(Lector::getName).collect(Collectors.toList());
    }
}
