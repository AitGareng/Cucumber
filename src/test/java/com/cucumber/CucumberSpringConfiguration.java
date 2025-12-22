package com.cucumber;

import org.junit.platform.suite.api.ConfigurationParameter;
import org.junit.platform.suite.api.ExcludeTags;
import org.junit.platform.suite.api.SelectClasspathResource;
import org.junit.platform.suite.api.Suite;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.ComponentScan;

import io.cucumber.spring.CucumberContextConfiguration;

import static io.cucumber.junit.platform.engine.Constants.GLUE_PROPERTY_NAME;

/**
 * Configuración de Cucumber
 */
@CucumberContextConfiguration
@SpringBootTest(classes = CucumberSpringConfiguration.TestConfig.class)
@ComponentScan(basePackages = { "com.cucumber" })
@ExcludeTags("ignore | pending | wip")
// @IncludeTags("only")
public class CucumberSpringConfiguration {

    @org.springframework.boot.SpringBootConfiguration
    @EnableAutoConfiguration
    @org.springframework.context.annotation.ComponentScan(basePackages = "com.cucumber")
    static class TestConfig {

        @org.springframework.context.annotation.Bean
        public org.springframework.web.client.RestTemplate restTemplate() {
            return new org.springframework.web.client.RestTemplate();
        }

    }

} 
