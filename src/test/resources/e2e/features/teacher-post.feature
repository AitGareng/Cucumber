Feature: Casos de prueba POST Teacher


    Scenario: Creacion de un nuevo teacher con todos sus campos
        Given estamos creando un nuevo teacher, los campos name y email son obligatorios
        When el usuario crea un nuevo teacher con "name", "surname" y "email"
        Then deberia devolver el nuevo teacher con sus atributos

    Scenario: Creacion de un nuevo teacher solo con name como campo obligatorio
        Given estamos creando un nuevo teacher, los campos name y email son obligatorios
        When el usuario crea un nuevo teacher solo con los campos name y surname
        Then no se crea el teacher lanzando un error

    Scenario: Creacion de un nuevo teacher solo con email como campo obligatorio
        Given estamos creando un nuevo teacher, los campos name y email son obligatorios
        When el usuario crea un nuevo teacher solo con el campo email
        Then no se crea el teacher lanzando un error

    Scenario: Creacion de un nuevo teacher solo con surname como campo obligatorio
        Given estamos creando un nuevo teacher, los campos name y email son obligatorios
        When el usuario crea un nuevo teacher solo con el campo surname
        Then no se crea el teacher lanzando un error

    Scenario: Creacion de nuevo teacher sin ningun rellenar ningun campo
        Given estamos creando un nuevo teacher, los campos name y email son obligatorios
        When el usuario crea un nuevo teacher sin ningun rellenar ningun campo
        Then no se crea el teacher lanzando un error

    Scenario: Creacion de un nuevo teacher con un correo ya existente
        Given estamos creando un nuevo teacher, los campos name y email son obligatorios
        When el usuario crea un nuevo teacher, con todos los campos y con un mail ya existente en la BBDD
        Then no se crea el teacher lanzando un error

    Scenario: Creacion de un nuevo teacher con un email sin @
        Given estamos creando un nuevo teacher, los campos name y email con obligatorios
        When el usuario crea un nuevo teacher, rellenando todos los campos pero el email no tiene @
        Then no se crea el teacher lanzando un error

    Scenario: Creacion de nuevo teacher con valor int en name
        Given estamos creando un nuevo teacher, los campos name y email con obligatorios
        When el usuario crea un nuevo teacher, rellenando todos los campos, pero en name guarda solo numeros
        Then no se crea el teacher lanzando un error

    Scenario: Creacion de nuevo teacher con valor int en surname
        Given estamos creando un nuevo teacher, los campos name y email con obligatorios
        When el usuario crea un nuevo teacher, rellenando todos los campos, pero en surname guarda solo numeros
        Then no se crea el teacher lanzando un error

    Scenario: Creacion de nuevo teacher con valor int en el campo email
        Given estamos creando un nuevo teacher, los campos name y email con obligatorios
        When el usuario crea un nuevo teacher, rellenando todos los campos, pero en email guarda solo numeros y un @
        Then no se crea el teacher lanzando un error

    Scenario: Creacion de nuevo teacher con un @ en el campo name
        Given estamos creando un nuevo teacher, los campos name y email con obligatorios
        When el usuario crea un nuevo teacher rellenando todos los campos, pero en name introduce un @
        Then no se actualizara y lanzara un error

    Scenario: Creacion de nuevo teacher con un @ en el campo surname
        Given estamos creando un nuevo teacher, los campos name y email con obligatorios
        When el usuario crea un nuevo teacher rellenando todos los campos, pero en surname introduce un @
        Then no se actualizara y lanzara un error

    Scenario: Creacion de nuevo teacher con verificacion de email
        Given estamos creando un nuevo teacher, los parametros name y email con obligatorios
        When el usuario crea un nuevo teacher, con "name", "surname" y "email" correctamente
        Then no se crea el teacher lanzando un error
(((REVISAR)))

