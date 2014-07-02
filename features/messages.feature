Feature: message administrator

Scenario: creating message
Given I am on the "/messages/new"
And I fill in "message_name" with "name"
And I fill in "message_email" with "email"
And I fill in "message_phone" with "phone"
And I fill in "message_content" with "content"
When I press "Guardar"
Then I should see "mensaje creado correctamente"

Scenario: editing message
Given existing one register message
When I am on the "/messages/1/edit"
And I fill in "message_name" with "name"
And I fill in "message_email" with "email"
And I fill in "message_phone" with "phone"
And I fill in "message_content" with "content"
When I press "Guardar"
Then I should see "message editado correctamente"

Scenario: deleting message
Given existing one register message
When I am on the "/messages"
