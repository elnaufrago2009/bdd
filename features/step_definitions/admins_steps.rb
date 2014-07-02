Dado(/^que exite un administrador con email "(.*?)" y contraseña "(.*?)"$/) do |email, contraseña|
  Admin.new(:email => email, :password => contraseña, :password_confirmation => contraseña).save!
end

Cuando(/^yo visito la pagina "(.*?)"$/) do |pagina|
  visit(pagina)
end

Cuando(/^yo lleno en "(.*?)" con "(.*?)"$/) do |field, datos|
  fill_in(field, :with => datos)
end

Cuando(/^presiono "(.*?)"$/) do |boton|
	click_button(boton)  
end

Entonces(/^deberia ver este mensage "(.*?)"$/) do |arg1|
  
end



Dado(/^que soy un nuevo administrador y estoy autenticado con email "(.*?)" y contraseña "(.*?)"$/) do |email, password|
  Admin.new(:email => email, :password => password, :password_confirmation => password)
  visit '/admins/sign_in'
  fill_in 'admin_email', :with => email
  fill_in 'admin_password', :with => password
  click_button 'Sign in'
end

Cuando(/^hago click en "(.*?)"$/) do |arg1|
  click_link(link)
end

Entonces(/^deberia ver "(.*?)"$/) do |arg1|
  
end