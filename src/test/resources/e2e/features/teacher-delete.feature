Feature: Casos de prueba DELETE Teacher

    Scenario: Borrar un teacher ya existente con parametro Id correcto
        Given estamos eliminando un teacher hay que introducir el parametro id del teacher en cuestion
        When el usuario itroduzca el Id correcto
        Then se borrara el teacher
        
    Scenario: Borrar un teacher ya existente con parametro Id no existente
        Given estamos eliminando un teacher hay que introducir el parametro id del teacher en cuestion
        When el usuario itroduzca el Id que no existe
        Then no se borrara ningun teacher y lanzara un error(aviso)

     Scenario: Borrar un teacher ya existente sin pasar ningun Id por parametro
        Given estamos eliminando un teacher hay que introducir el parametro id del teacher en cuestion
        When el usuario no introduce ningun Id
        Then no se borrara ningun teacher y lanzara un error(aviso)