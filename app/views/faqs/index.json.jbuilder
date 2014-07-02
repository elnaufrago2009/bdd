json.array!(@faqs) do |faq|
  json.extract! faq, :id, :title, :content, :image_faq
  json.url faq_url(faq, format: :json)
end
