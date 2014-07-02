json.array!(@portafolios) do |portafolio|
  json.extract! portafolio, :id, :title, :subtitle, :content_resumen, :content, :image_portafolio_big, :image_portafolio_medium, :image_portafolio_small
  json.url portafolio_url(portafolio, format: :json)
end
