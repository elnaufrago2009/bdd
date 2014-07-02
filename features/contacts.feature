Feature: contact administrator

Scenario: creating contact
Given I am on the "/contacts/new"
And I fill in "contact_title" with "prueba"
And I fill in "contact_subtitle" with "prueba"
And I fill in "contact_code" with "prueba"
And I fill in "contact_content_title" with "prueba"
And I fill in "contact_content_content" with "prueba"
And I fill in "contact_data_title" with "prueba"
And I fill in "contact_data_subtitle" with "prueba"
And I fill in "contact_data_direction" with "prueba"
And I fill in "contact_data_phone" with "prueba"
And I fill in "contact_data_email" with "prueba"
And I fill in "contact_data_time" with "prueba"
And I fill in "contact_data_facebook" with "prueba"
And I fill in "contact_data_linkedln" with "prueba"
And I fill in "contact_data_twitter" with "prueba"
And I fill in "contact_data_googlemas" with "prueba"
When I press "Guardar"
Then I should see "Contact creado correctamente"

Scenario: editing contact
Given existing one register contact
When I am on the "/contacts/1/edit"
And I fill in "contact_title" with "edit_prueba"
And I fill in "contact_subtitle" with "edit_prueba"
And I fill in "contact_code" with "edit_prueba"
And I fill in "contact_content_title" with "edit_prueba"
And I fill in "contact_content_content" with "edit_prueba"
And I fill in "contact_data_title" with "edit_prueba"
And I fill in "contact_data_subtitle" with "edit_prueba"
And I fill in "contact_data_direction" with "edit_prueba"
And I fill in "contact_data_phone" with "edit_prueba"
And I fill in "contact_data_email" with "edit_prueba"
And I fill in "contact_data_time" with "edit_prueba"
And I fill in "contact_data_facebook" with "edit_prueba"
And I fill in "contact_data_linkedln" with "edit_prueba"
And I fill in "contact_data_twitter" with "edit_prueba"
And I fill in "contact_data_googlemas" with "edit_prueba"
And I press "Guardar"
Then I should see "Contact editado correctamente"

Scenario: deleting contact
Given existing one register contact
When I am on the "/contacts"
And I press deleting "contacts"
Then I should see "contact eliminado correctamente"

