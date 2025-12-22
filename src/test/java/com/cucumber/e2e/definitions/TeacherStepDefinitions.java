package com.cucumber.e2e.definitions;

import static org.junit.Assert.assertTrue;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.cucumber.client.model.TeacherDTO;
import com.cucumber.client.service.TeacherService;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class TeacherStepDefinitions {

    @Autowired
    private TeacherService teacherService;

    List<TeacherDTO> teachers;

    @Given("tengo los siguientes profesores")
    public void tengo_los_siguientes_profesores(io.cucumber.datatable.DataTable dataTable) {
        dataTable.asMaps(String.class, String.class).forEach(row -> {
            String name = row.get("name");
            String email = row.get("email");
            System.out.println(name + " - " + email);

            // Llamar al teacherService.saveTeacher(...)


        });
    }

    @When("obtengo los profesores")
    public void llamo_para_obtener_los_profesores() {
       teachers = teacherService.getTeachers();
    }

    @Then("se devuelven todos los profesores")
    public void se_devuelven_todos_los_profesores() {
        assertTrue("La lista de teachers está vacía", teachers != null);
        assertTrue("La lista de teachers no tiene ninguno", teachers.size() == 0);


    }

}
