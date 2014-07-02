json.array!(@posts) do |post|
  json.extract! post, :id, :title, :image_post_big, :image_post_medium, :content_abstract, :content
  json.url post_url(post, format: :json)
end
