Feature: portafolio administrator

Scenario: creating portafolio
Given I am on the "/portafolios/new"
And I fill in "portafolio_title" with "prueba"
And I fill in "portafolio_subtitle" with "prueba"
And I fill in "portafolio_content_resumen" with "prueba"
And I fill in "portafolio_content" with "prueba"
And I fill in "portafolio_image_portafolio_big" with "prueba"
And I fill in "portafolio_image_portafolio_medium" with "prueba"
And I fill in "portafolio_image_portafolio_small" with "prueba"
When I press "Guardar"
Then I should see "Portafolio creado correctamente"

Scenario: editing portafolio
Given existing register portafolio
When I am on the "/portafolios/1/edit"
And I fill in "portafolio_title" with "edit_prueba"
And I fill in "portafolio_subtitle" with "edit_prueba"
And I fill in "portafolio_content_resumen" with "edit_prueba"
And I fill in "portafolio_content" with "edit_prueba"
And I fill in "portafolio_image_portafolio_big" with "edit_prueba"
And I fill in "portafolio_image_portafolio_medium" with "edit_prueba"
And I fill in "portafolio_image_portafolio_small" with "edit_prueba"
And I press "Guardar"
Then I should see "Portafolio editado correctamente"

