When(/^I follow "(.*?)"$/) do |arg1|
  click_link arg1
end

Given(/^existing register posts$/) do
  Post.create(:title => "prueba", :image_post_big => "prueba", :image_post_medium => "prueba", :content_abstract => "prueba", :content => "prueba").save!
end