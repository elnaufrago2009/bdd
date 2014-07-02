Feature: customers administrator

Scenario: creating customers
	Given I'm register new 
	When I am home page
	And I fill in "customer_image" with "image"
	And I fill in "customer_nombre" with "nombre"
	And I press "Guardar"
	Then I should see "customer registrado correctamente"

Scenario: editing customers
	Given exists register customer
	When I am home page
	And I fill in "customer_image" with "edit_image"
	And I fill in "customer_nombre" with "edit_nombre"
	And I press "Guardar"
	Then I should see "customer editado correctamente"

Scenario: deleting customers
	Given exists register customer
	When I am home page
	And I press "/customers/1"
	Then I should see "customer eliminado correctamente"