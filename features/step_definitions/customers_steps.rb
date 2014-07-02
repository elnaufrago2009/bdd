Given(/^I'm register new$/) do
  
end

When(/^I am home page$/) do
  visit "/customers/new"  	
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  fill_in arg1, :with => arg2

end

When(/^I press "(.*?)"$/) do |arg1|  
  click_button 'Guardar'	
end

Then(/^I should see "(.*?)"$/) do |arg1|
  sleep(inspection_time=4)
end

Given(/^exists register customer$/) do
  Customer.new(:image => "image", :nombre => 'nombre')
end

When(/^I am on the home page$/) do
  visit "/customers/1/edit"
end