Given(/^existing page option$/) do
  PageOption.create(:title => "prueba", :subtitle => "prueba", :footer_left => "prueba", :footer_right => "prueba", :image_option_logo => "prueba").save!
end