Feature: page options administrator

Scenario: creating new page option
Given I visit the "/page_options" page
When I follow "Crear Page option" 
And I fill in "page_option_title" with "prueba"
And I fill in "page_option_subtitle" with "prueba"
And I fill in "page_option_footer_left" with "prueba"
And I fill in "page_option_footer_right" with "prueba"
And I fill in "page_option_image_option_logo" with "prueba"
When I press "Guardar"
Then I should see "Page option creado correctamente"

Scenario: editing page option
Given existing page option
When I visit the "/page_options" page
When I follow "Editar"
And I fill in "page_option_title" with "prueba"
And I fill in "page_option_subtitle" with "prueba"
And I fill in "page_option_footer_left" with "prueba"
And I fill in "page_option_footer_right" with "prueba"
And I fill in "page_option_image_option_logo" with "prueba"
When I press "Guardar"
When I should see "page option editada correctamente"

Scenario: deleting page option
Given existing page option
When I visit the "/page_options" page
When I follow "Eliminar"
When I accept the "¿Estás seguro?" alert
Then I should see "page option eliminado correctamente"
