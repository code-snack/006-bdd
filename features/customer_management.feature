Feature: Customer Management

  Scenario: Creating a new customer
    When I create the following customer:
      | First Name | Diego    |
      | Last Name  | Selzlein |
    Then I should have the following customers:
      | first_name | last_name |
      | Diego      | Selzlein  |

  Scenario: Viewing validation error when submitting invalid customer data
