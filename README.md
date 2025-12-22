# Estructura
-> Scenario -> Escenario 
-> Given -> Dado que 
-> When -> Cuando
-> Then -> Encontes

# Dudas
1.Si tengo varias features como puedo omitir las que no me interesan y usar solo la que yo quiera? intente con @ignore pero sigue pillandola (chat me sugirio .disabled para que no quiera usar)
2.Los Gerkhin los usais en Español o Ingles?


# Ejecutar las pruebas
mvn test

# Documentación de interés
https://cucumber.io/docs

https://cucumber.io/docs/guides/10-minute-tutorial -> empezar a partir de "Escribe un escenario"

https://cucumber.io/docs/gherkin/reference

https://cucumber.io/docs/cucumber/step-definitions y el resto de la sección completa



# Ejercicio 1
Montar el put de teacher

# Ejercicio 2
1. Crear los escenarios de casos de prueba para el CRUD de teacher
Para cada parte del CRUD, crear un .feature -> teacher-get.feature, teacher-post.feature, etc.

Antes de empezar a automatizar, revisar con Ivette

2. Automatizarlo

Explicación más humana: https://www.baeldung.com/junit-assertions#assertions-junit5

Documentación oficial: https://docs.junit.org/5.0.1/api/org/junit/jupiter/api/Assertions.html
