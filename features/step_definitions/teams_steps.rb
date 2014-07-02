Dado(/^que quiero registrar un nuevo usuario al team$/) do
	visit teams_path
end

Cuando(/^entro en la pagina "(.*?)"$/) do |arg1|
	visit new_team_path
end

Cuando(/^lleno "(.*?)" con "(.*?)"$/) do |arg1, arg2|
	if arg1 == 'team_image'
		fill_in arg1, :with => arg2
	elsif  arg1 == 'team_nombre'
		fill_in arg1, :with => arg2	
	elsif  arg1 == 'team_funcion'
		fill_in arg1, :with => arg2
	elsif  arg1 == 'team_resumen'
		fill_in arg1, :with => arg2
	elsif  arg1 == 'team_facebook'
		fill_in arg1, :with => arg2
	elsif  arg1 == 'team_linkening'
		fill_in arg1, :with => arg2
	elsif  arg1 == 'team_twitter'
		fill_in arg1, :with => arg2
	elsif  arg1 == 'team_googlemas'
		fill_in arg1, :with => arg2	
	end
end
Cuando(/^hago click en guardar$/) do
	click_button 'Guardar'
end
Entonces(/^deberia ver el mensaje de "(.*?)"$/) do |arg1|
	
end



Dado(/^que existe un elemento del team$/) do
  Team.new(:image => 'imagen').save!
end

Cuando(/^yo lo edito$/) do
  sleep(inspection_time=4)	
  visit edit_team_path(1)
  fill_in "team_image", :with => 'image'
  fill_in "team_nombre", :with => 'nombre'
  fill_in "team_funcion", :with => 'funcion'
  fill_in "team_resumen", :with => 'resumen'
  fill_in "team_facebook", :with => 'facebook'
  fill_in "team_linkening", :with => 'linkening'
  fill_in "team_twitter", :with => 'twitter'
  fill_in "team_googlemas", :with => 'googlemas'
end

Cuando(/^hago click 'Guardar'$/) do
  click_button 'Guardar'
end

Entonces(/^deberia ver un mensage diciendo "(.*?)"$/) do |arg1|
  sleep(inspection_time=4)
end


