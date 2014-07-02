Given(/^existing one register contact$/) do
  Contact.new(:title => "prueba", :subtitle => "prueba", :code => "prueba", :content_title => "prueba", :content_content => "prueba", :data_title => "prueba", :data_subtitle => "prueba", :data_direction => "prueba", :data_phone => "prueba", :data_email => "prueba", :data_time => "prueba", :data_facebook => "prueba", :data_linkedln => "prueba", :data_twitter => "prueba", :data_googlemas   => "prueba").save!
end

When(/^I press deleting "(.*?)"$/) do |arg1|
  	click_link 'Eliminar', :href => '/contacts/1'		
	page.driver.browser.switch_to.alert.accept	
end