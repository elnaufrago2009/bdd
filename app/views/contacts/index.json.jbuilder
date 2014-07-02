json.array!(@contacts) do |contact|
  json.extract! contact, :id, :title, :subtitle, :code, :content_title, :content_content, :data_title, :data_subtitle, :data_direction, :data_phone, :data_email, :data_time, :data_facebook, :data_linkedln, :data_twitter, :data_googlemas
  json.url contact_url(contact, format: :json)
end
