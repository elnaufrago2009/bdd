Given(/^exists an admin with email "(.*?)" and password "(.*?)"$/) do |email, password|
  Admin.new(:email => email, :password => password, :password_confirmation => password).save!
end

When(/^I visit the "(.*?)" page$/) do |page|
  visit(page)
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |field, data|
  fill_in(field, :with => data)
end

When(/^I press "(.*?)"$/) do |button|
  click_button(button)
end

Then(/^I should see "(.*?)"$/) do |result|
  page.should have_content(result)
end
