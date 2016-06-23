json.array!(@posts) do |post|
  json.extract! post, :id, :title, :image, :description, :created_at, :updated_at
  json.url post_url(post, format: :json)
end