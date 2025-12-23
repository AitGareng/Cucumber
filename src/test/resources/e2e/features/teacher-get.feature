Feature: Casos de prueba GET de Teacher

    
    Scenario: obtengo todos los profesores disponibles
        When obtengo los profesores
        Then se devuelven todos los profesores

    Scenario: obtengo todos los profesores disponibles
        When no existen profesores
        Then se devuelve un mensaje "no hay profesores disponibles"

    Scenario: obtengo todos los profesores disponibles
        When 

    @ignore
    Scenario: obtengo todos los profesores disponibles
        Given tengo los siguientes profesores
            | name   | email             |
            | aitor  | aitor@aitor.com   |
            | leti   | leti@leti.com     |
            | ivette | ivette@ivette.com |
        When llamo para obtener los profesores
        Then se devuelven todos los profesores
