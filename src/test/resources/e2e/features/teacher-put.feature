Feature: Casos de prueba PUT Teacher

    Scenario: Actualizar todos los parametros de un teacher ya existente
        Given estamos actualizando los datos de un teacher hay que introducir el parametro id del teacher en cuestion
        When el usuario introduzca cambios en los campos "name", "surname" y "email"
        Then se actualizaran los parametros

    Scenario: Actualizar solo un parametro de un teacher ya existente
        Given estamos actualizando los datos de un teacher hay que introducir el parametro id del teacher en cuestion
        When el usuario introduzca cambios solo en el campo "name"
        Then se actualizara solo ese campo el resto permanecera igual

    Scenario: Actualizar solo un parametro de un teacher ya existente
        Given estamos actualizando los datos de un teacher hay que introducir el parametro id del teacher en cuestion
        When el usuario introduzca cambios solo en el campo "surname"
        Then se actualizara solo ese campo el resto permanecera igual

    Scenario: Actualizar solo un parametro de un teacher ya existente
        Given estamos actualizando los datos de un teacher hay que introducir el parametro id del teacher en cuestion
        When el usuario introduzca cambios solo en el campo "email"
        Then se actualizara solo ese campo el resto permanecera igual

    Scenario: Actualizar un teacher ya existente sin pasarle rellenar ningun campo
        Given estamos actualizando los datos de un teacher hay que introducir el parametro id del teacher en cuestion
        When el usuario actualiza un teacher sin rellenar ningun campo
        Then no se actualizara y lanzara un error

    Scenario: Actualizar el email de un teacher ya existente sin utilizar un @
        Given estamos actualizando los datos de un teacher hay que introducir el parametro id del teacher en cuestion
        When el usuario actualiza un techer rellenando el campo email sin @
        Then no se actualizara y lanzara un error

    Scenario: Actualizar el name con un @
        Given estamos actualizando los datos de un teacher hay que introducir el parametro id del teacher en cuestion
        When el usuario actualiza el campo name e introduce un @
        Then no se actualizara y lanzara un error

    Scenario: Actualizar un Id que no existe
        Given estamos actualizando los datos de un teacher hay que introducir el parametro id del teacher en cuestion
        When el usuario quiere introduce por parametro un id que no existe
        Then no se actualizara nada y lanzara un error

    Scenario: Actualizar el campo name de un teacher existente solo con numeros
        Given estamos actualizando los datos de un teacher hay que introducir el parametro id del teacher en cuestion
        When el usuario actualiza un teacher guardando un valor int en el campo name
        Then no se actualizara y lanzara un error

    Scenario: Actualizar el campo surname de un teacher existente solo con numeros
        Given estamos actualizando los datos de un teacher hay que introducir el parametro id del teacher en cuestion
        When el usuario actualiza un teacher guardando un valor int en el campo surname
        Then no se actualizara y lanzara un error

    Scenario: Actualizar el campo email de un teacher existente solo con numeros
        Given estamos actualizando los datos de un teacher hay que introducir el parametro id del teacher en cuestion
        When el usuario actualiza un teacher guardando un valor int en el campo email
        Then no se actualizara y lanzara un error

    Scenario: Actualizar el campo name de un teacher existente con un maximo de 50 caracteres
        Given estamos actualizando los datos de un teacher hay que introducir el parametro id del teacher en cuestion
        When el usuario actualiza un teacher guardando en el campo name un string con 50 o mas carateres
        Then no se actualizara y lanzara un error

    Scenario: Actualizar el campo name de un teacher existente con un minimo de 3 caracteres
        Given estamos actualizando los datos de un teacher hay que introducir el parametro id del teacher en cuestion
        When el usuario actualiza un teacher guardando en el campo name un string con 3 o mas carateres
        Then se actualizara

    Scenario: Actualizar el campo surname de un teacher existente con un maximo de 50 caracteres
        Given estamos actualizando los datos de un teacher hay que introducir el parametro id del teacher en cuestion
        When el usuario actualiza un teacher guardando en el campo surname un string con 50 o mas carateres
        Then no se actualizara y lanzara un error

    Scenario: Actualizar el campo surname de un teacher existente con un minimo de 3 caracteres
        Given estamos actualizando los datos de un teacher hay que introducir el parametro id del teacher en cuestion
        When el usuario actualiza un teacher guardando en el campo surname un string con 3 o mas carateres
        Then se actualizara

    Scenario: 

    




