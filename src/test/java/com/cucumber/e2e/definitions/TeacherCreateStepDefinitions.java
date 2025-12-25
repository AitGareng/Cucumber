package com.cucumber.e2e.definitions;

import static org.junit.jupiter.api.Assertions.*;

import org.springframework.beans.factory.annotation.Autowired;

import com.cucumber.client.service.TeacherService;
import com.cucumber.client.model.TeacherDTO;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class TeacherCreateStepDefinitions {

    @Autowired
    private TeacherService teacherService;

    private TeacherDTO request;
    private TeacherDTO response;
    private Exception lastException;

    @Given("estamos creando un nuevo teacher, los campos name y email son obligatorios")
    public void estamos_creando_un_nuevo_teacher_los_campos_name_y_email_son_obligatorios() {
        System.out.println(">>> ENTRANDO EN GIVEN DE CREATE TEACHER");
        request = new TeacherDTO();
    }

    @When("el usuario crea un nuevo teacher rellenando todos sus campos")
    public void el_usuario_crea_un_nuevo_teacher_rellenando_todos_sus_campos() {
        System.out.println(">>> ENTRANDO EN WHEN");
        request.setName("Aitor");
        request.setEmail("ait@gmail.com");

        try {
            response = teacherService.createTeacher(request);
            lastException = null;
        } catch (Exception e) {
            lastException = e;
            response = null;
        }
    }

    @Then("deberia devolver el nuevo teacher con sus atributos")
    public void deberia_devolver_el_nuevo_teacher_con_sus_atributos() {
        System.out.println(">>> ENTRANDO EN THEN");
        assertNull(lastException, "No deberia fallar la creacion");
        assertNotNull(response, "Deberia devolverse un TeacherDTO");
        assertNotNull(response.getId(), "Deberia tener id");

        assertEquals(request.getName(), response.getName());
        assertEquals(request.getEmail(), response.getEmail());
    }

}
