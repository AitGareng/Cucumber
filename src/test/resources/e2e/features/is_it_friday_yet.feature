Feature: Ya es viernes?
  Todos quieren saber cuando es viernes.

  Scenario: El viernes es viernes
    Given dado que hoy es viernes
    When Cuando pregunto si ya es viernes
    Then entonces deberia decirme "Sí"