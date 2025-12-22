package com.cucumber.e2e.definitions;
import com.cucumber.client.service.IsItFriday;



import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class IsItFridayStepDefinitions {

    private String today;
    private String actualAnswer;

    @Given("dado que hoy es viernes")
    public void dado_que_hoy_es_domingo() {
        today = "viernes";
    }

    @When("Cuando pregunto si ya es viernes")
    public void cuando_pregunto_si_ya_es_viernes() {
        actualAnswer = IsItFriday.isItFriday(today);
    }

    @Then("entonces deberia decirme {string}")
    public void entonces_deberia_decirme(String expectedAnswer) {
        assertEquals(expectedAnswer, actualAnswer);
    }
}
