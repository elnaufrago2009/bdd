Dado(/^que existe un about con id "(.*?)"$/) do |arg1|
	About.new(:title => 'Titulo', :subtitle => 'subtitle', :image => 'image', :content_title => 'content_title', :content => 'content').save!	
end

Cuando(/^visito "(.*?)"$/) do |arg1|
  visit("/abouts/1/edit")  
end

Cuando(/^lleno el campo "(.*?)" con "(.*?)"$/) do |field, data|	 
	if 	field == 'about_title'
		fill_in(field, :with => data) 		
 	elsif field == 'about_subtitle'
 		fill_in(field, :with => data) 		
 	elsif field == 'about_image'
 		fill_in(field, :with => data) 		
 	elsif field == 'about_content_title'
 		fill_in(field, :with => data) 		
 	elsif field == 'about_content'
 		fill_in(field, :with => data) 		
	end		
end

Cuando(/^hago click en el boton "(.*?)"$/) do |arg1|
	click_button 'Guardar'	
end

Entonces(/^deberia ver el mesaje "(.*?)"$/) do |arg1|

end




Dado(/^que creo un nuevo registro en abouts y visito la pagina principal abouts$/) do
	visit '/abouts'	
	visit '/abouts/new'
	fill_in 'about_title', :with => 'title'
	fill_in 'about_subtitle', :with => 'subtitle'
	fill_in 'about_image', :with => 'image'
	fill_in 'about_content_title', :with => 'content_title'
	fill_in 'about_content', :with => 'content'
	click_button 'Guardar'
	sleep(inspection_time=4)	
end

Cuando(/^elimino ese registro$/) do
	click_link 'Eliminar', :href => '/abouts/1'		
	page.driver.browser.switch_to.alert.accept
	sleep(inspection_time=4)
end

Entonces(/^deberia ver el mensaje se elimino correctamente$/) do
  
end