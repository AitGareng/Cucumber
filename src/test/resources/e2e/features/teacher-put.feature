Feature: Casos de prueba PUT Teacher

    Scenario: Actualizar todos los parametros de un teacher ya existente
        Given tengo un teacher creado con los siguientes datos
            | name  | surname    | email         |
            | Aitor | Enguidanos | ait@gmail.com |
        When actualizo el teacher con la siguiente informacion
            | attribute | value          |
            | name      | Leti           |
            | surname   | Guadix         |
            | email     | leti@gmail.com |
        Then el teacher tiene los siguientes datos
            | name | surname | email          |
            | Leti | Guadix  | leti@gmail.com |


    Scenario: Actualizar el campo name de un teacher ya existente
        Given tengo un teacher creado con los siguientes datos
            | name  | surname    | email         |
            | Aitor | Enguidanos | ait@gmail.com |
        When actualizo el teacher con la siguiente informacion
            | attribute | value |
            | name      | Leti  |
        Then el teacher tiene los siguientes datos
            | name | surname    | email         |
            | Leti | Enguidanos | ait@gmail.com |

    Scenario: Actualizar el campo surname de un teacher ya existente
        Given tengo un teacher creado con los siguientes datos
            | name  | surname    | email         |
            | Aitor | Enguidanos | ait@gmail.com |
        When actualizo el teacher con la siguiente informacion
            | attribute | value  |
            | surname   | Guadix |
        Then el teacher tiene los siguientes datos
            | name  | surname | email         |
            | Aitor | Guadix  | ait@gmail.com |

    Scenario: Actualizar el campo email de un teacher ya existente
        Given tengo un teacher creado con los siguientes datos
            | name  | surname    | email         |
            | Aitor | Enguidanos | ait@gmail.com |
        When actualizo el teacher con la siguiente informacion
            | attribute | value          |
            | email     | leti@gmail.com |
        Then el teacher tiene los siguientes datos
            | name  | surname | email          |
            | Aitor | Guadix  | leti@gmail.com |

    Scenario: Actualizar un teacher ya existente sin rellenar ningun campo
        Given tengo un teacher creado con los siguientes datos
            | name  | surname    | email         |
            | Aitor | Enguidanos | ait@gmail.com |
        When el usuario actualiza un teacher sin rellenar ningun campo
        Then no se actualizara
        And lanzara un error

    Scenario: Actualizar el email de un teacher ya existente sin utilizar un @
        Given tengo un teacher creado con los siguientes datos
            | name  | surname    | email         |
            | Aitor | Enguidanos | ait@gmail.com |
        When actualizo el techer rellenando el campo email sin @
            | attribute | value         |
            | email     | letigmail.com |
        Then no se actualizara
        And lanzara un error

    Scenario: Actualizar el name con un @
        Given tengo un teacher creado con los siguientes datos
            | name  | surname    | email         |
            | Aitor | Enguidanos | ait@gmail.com |
        When actualizo el campo name e introduzco un @
            | name   | surname    | email         |
            | Aitor@ | Enguidanos | ait@gmail.com |
        Then no se actualizara
        And lanzara un error

    Scenario: Actualizar un Id que no existe
        Given que tengo un solo un teacher creado con id 1
        And no tengo ningun teacher creado con id 33
        When cuando introduzco el id 33
        Then no se actualizara nada
        And lanzara un error

    Scenario: Actualizar unicamente el campo name de un teacher existente solo con numeros
        Given tengo un teacher creado con los siguientes datos
            | name  | surname    | email         |
            | Aitor | Enguidanos | ait@gmail.com |
        When actualizo el teacher con la siguiente informacion
            | attribute | value     |
            | name      | 546851645 |
        Then no se actualizara nada
        And lanzara un error

    Scenario: Actualizar unicamente el campo surname de un teacher existente solo con numeros
        Given tengo un teacher creado con los siguientes datos
            | name  | surname    | email         |
            | Aitor | Enguidanos | ait@gmail.com |
        When actualizo el teacher con la siguiente informacion
            | attribute | value     |
            | surname   | 546851645 |
        Then no se actualizara nada
        And lanzara un error

    Scenario: Actualizar el campo email de un teacher existente solo con numeros
        Given tengo un teacher creado con los siguientes datos
            | name  | surname    | email         |
            | Aitor | Enguidanos | ait@gmail.com |
        When actualizo el teacher con la siguiente informacion
            | attribute | value     |
            | email     | 546851645 |
        Then no se actualizara nada
        And lanzara un error

    Scenario: Actualizar el campo name de un teacher existente con un maximo de 50 caracteres
        Given que tengo un teacher con los siguientes datos
            | name  | surname    | email         |
            | Aitor | Enguidanos | ait@gmail.com |
        When actualizo el teacher con la siguiente informacion
            | attribute | value                                                  |
            | name      | Aitorddsergrgsdgrsgfdgsdfsdfafdasdasgsfgdfgdfgdfgdfgdf |
        Then no se actualizara
        And lanzara un error

    Scenario: Actualizar el campo surname de un teacher existente con mas de 50 caracteres
        Given que tengo un teacher con los siguientes datos
            | name  | surname    | email         |
            | Aitor | Enguidanos | ait@gmail.com |
        When actualizo el teacher con la siguiente informacion
            | attribute | value                                                       |
            | surname   | Enguidanosddsergrgsdgrsgfdgsdfsdfafdasdasgsfgdfgdfgdfgdfgdf |
        Then no se actualizara
        And lanzara un error

    Scenario: Actualizar el campo name de un teacher existente con mas de 50 caracteres
        Given que tengo un teacher con los siguientes datos
            | name  | surname    | email         |
            | Aitor | Enguidanos | ait@gmail.com |
        When actualizo el teacher con la siguiente informacion
            | attribute | value                                                           |
            | email     | Aitorddsergrgsdgrsgfdgsdfsdfafdasdasgsfgdfgdfgdfgdfgd@gmail.com |
        Then no se actualizara
        And lanzara un error

    Scenario: Actualizar el campo name de un teacher existente con un minimo de 3 caracteres
        Given que tengo un teacher con los siguientes datos
            | name  | surname    | email         |
            | Aitor | Enguidanos | ait@gmail.com |
        When actualizo el teacher con la siguiente informacion
            | attribute | value |
            | name      | Ait   |
        Then se actualizara

    Scenario: Actualizar el campo surname de un teacher existente con un minimo de 3 caracteres
        Given que tengo un teacher con los siguientes datos
            | name  | surname    | email         |
            | Aitor | Enguidanos | ait@gmail.com |
        When actualizo el campo name con la siguiente informacion (es mejor de esta forma o de la de arriba)
            | attribute | value |
            | surname   | Eng   |
        Then se actualizara






