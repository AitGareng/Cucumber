package com.cucumber;

import org.junit.platform.suite.api.ConfigurationParameter;
import org.junit.platform.suite.api.SelectClasspathResource;
import org.junit.platform.suite.api.Suite;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

import static io.cucumber.junit.platform.engine.Constants.GLUE_PROPERTY_NAME;

@Suite
@SelectClasspathResource("e2e/features")
@ConfigurationParameter(key = GLUE_PROPERTY_NAME, value = "com.cucumber")
public class CucumberSuiteTest {

    @Bean
    public RestTemplate restTemplate(){
        return new RestTemplate();
    }

}
