Feature: faqs administrator

Scenario: creating new faq
When I visit the "/faqs" page
And I follow "Crear Faq"
When I fill in "faq_title" with "prueba"
And I fill in "faq_content" with "prueba"
And I fill in "faq_image_faq" with "prueba"
When I press "Guardar"
Then I should see "Faq creado correctamente"

Scenario: editing faq
Given existing register faq
When I visit the "/faqs" page
And I follow "Editar"
When I fill in "faq_title" with "editar_prueba"
And I fill in "faq_content" with "editar prueba"
And I fill in "faq_image_faq" with "editar_prueba"
When I press "Guardar"
Then I should see "Faq editado correctamente"

Scenario: deleting faq
Given existing register faq
When I visit the "/faqs" page
And I follow "Eliminar"
When I accept the "¿Estás seguro?" alert
Then I should see "Faq eliminado correctamente"
