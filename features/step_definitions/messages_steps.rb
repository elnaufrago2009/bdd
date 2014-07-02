Given(/^existing one register message$/) do
  Message.new(:name => "prueba", :email => "prueba", :phone => "prueba", :content => 'prueba').save!
end