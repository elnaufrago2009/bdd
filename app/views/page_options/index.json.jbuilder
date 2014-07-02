json.array!(@page_options) do |page_option|
  json.extract! page_option, :id, :title, :subtitle, :footer_left, :footer_right, :image_option_logo
  json.url page_option_url(page_option, format: :json)
end
