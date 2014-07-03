Given(/^existing register portafolio$/) do
  Portafolio.new(:title => "prueba", :subtitle => "prueba", :content_resumen => 'prueba', :content => "prueba").save!
end