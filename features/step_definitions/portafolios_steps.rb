Given(/^existing register portafolio$/) do
  Portafolio.new(:title => "prueba", :subtitle => "prueba", :content_resumen => 'prueba', :content => "prueba", ).save!
end

Then(/^I visit the "(.*?)" page$/) do |arg1|
  visit arg1
end

Then(/^I follow "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  click_link arg1, :href => arg2
end

When(/^I accept the "(.*?)" alert$/) do |arg1|
  page.driver.browser.switch_to.alert.accept
end