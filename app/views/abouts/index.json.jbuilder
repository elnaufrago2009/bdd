json.array!(@abouts) do |about|
  json.extract! about, :id, :title, :subtitle, :image, :content_title, :content
  json.url about_url(about, format: :json)
end
