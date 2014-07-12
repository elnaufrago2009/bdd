Given(/^existing register faq$/) do
  Faq.new(:title => "prueba", :content => "prueba", :image_faq => "prueba").save!
end