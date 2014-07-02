json.array!(@services) do |service|
  json.extract! service, :id, :principal_title, :principal_subtitle, :principal_image, :content_principal_title, :content_principal_content, :content_segundario_title, :content_segundario_content, :tab_one_title, :tab_one_content, :tab_one_image, :tab_two_title, :tab_two_content, :tab_two_image, :tab_three_title, :tab_three_content, :tab_three_image, :tab_four_title, :tab_four_content, :tab_four_image, :tab_five_title, :tab_five_content, :tab_five_image, :service_title, :service_subtitle, :service_one_title, :service_one_content, :service_one_image, :service_two_title, :service_two_content, :service_two_image, :service_three_title, :service_three_content, :service_three_image
  json.url service_url(service, format: :json)
end
