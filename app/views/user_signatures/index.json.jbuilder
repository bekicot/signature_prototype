json.array!(@user_signatures) do |user_signature|
  json.extract! user_signature, :id, :name, :description, :signature
  json.url user_signature_url(user_signature, format: :json)
end
