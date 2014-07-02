Given(/^I am on the "(.*?)"$/) do |arg1|
  visit(arg1)
end

Given(/^existing one register services$/) do
  Service.new(:principal_title => "edit prueba", :principal_subtitle => "edit prueba", :principal_image => "edit prueba", :content_principal_title => "edit prueba", :content_principal_content => "edit prueba", :content_segundario_title => "edit prueba", :content_segundario_content => "edit prueba", :tab_one_title => "edit prueba", :tab_one_content => "edit prueba", :tab_one_image => "edit prueba", :tab_two_title => "edit prueba", :tab_two_content => "edit prueba", :tab_two_image => "edit prueba", :tab_three_title => "edit prueba", :tab_three_content => "edit prueba", :tab_three_image => "edit prueba", :tab_four_title => "edit prueba", :tab_four_content => "edit prueba", :tab_four_image => "edit prueba", :tab_five_title => "edit prueba", :tab_five_content => "edit prueba", :tab_five_image => "edit prueba", :service_title => "edit prueba", :service_subtitle => "edit prueba", :service_one_title => "edit prueba", :service_one_content => "edit prueba", :service_one_image => "edit prueba", :service_two_title => "edit prueba", :service_two_content => "edit prueba", :service_two_image => "edit prueba", :service_three_title => "edit prueba", :service_three_content => "edit prueba", :service_three_image => "edit prueba").save!
end

When(/^I press deleting$/) do
	click_link 'Eliminar', :href => '/services/1'		
	page.driver.browser.switch_to.alert.accept
	sleep(inspection_time=4)
end