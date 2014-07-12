Feature: posts administrator

Scenario: creating new post
When I visit the "/posts" page
And I follow "Crear Post"
And I fill in "post_title" with "prueba"
And I fill in "post_image_post_big" with "prueba"
And I fill in "post_image_post_medium" with "prueba"
And I fill in "post_content_abstract" with "prueba"
And I fill in "post_content" with "prueba"
And I press "Guardar"
Then I should see "Oferta guardada correctamente."

Scenario: editing post
Given existing register posts
When I visit the "/posts" page
And I follow "Editar" 
And I fill in "post_title" with "prueba"
And I fill in "post_image_post_big" with "prueba"
And I fill in "post_image_post_medium" with "prueba"
And I fill in "post_content_abstract" with "prueba"
And I fill in "post_content" with "prueba"
And I press "Guardar"
Then I should see "Post editado correctamente."

Scenario: deleting post
Given existing register posts
When I visit the "/posts" page
And I follow "Eliminar"
When I accept the "¿Estás seguro" alert
Then I should see "posts eliminado correctamente."



 