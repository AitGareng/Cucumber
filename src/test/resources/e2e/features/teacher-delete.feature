Feature: Casos de prueba DELETE Teacher

    Scenario: Borrar un teacher ya existente con parametro id correcto
        Given que tengo un teacher con id 1
        When el usuario itroduzca el id 1
        Then se borrara el teacher
        
    Scenario: Borrar un teacher ya existente con parametro id no existente
        Given que tengo un teacher con id 1
        And no tengo ningun teacher con el id 33
        When el usuario itroduzca el id 33
        Then no se borrara ningun teacher
        And lanzara un error

     Scenario: Borrar un teacher ya existente sin pasar ningun id por parametro
        Given que tengo un teacher ya existente
        When el usuario no introduce ningun id
        Then no se borrara ningun teacher
        And lanzara un error