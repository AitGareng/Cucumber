package com.cucumber.client.service;

public class IsItFriday {

    
    public static String isItFriday(String today) {
        if ("viernes".equalsIgnoreCase(today)) {
            return "Sí";
        } else {
            return "No";
        }
    }

    
}
