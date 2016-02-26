json.array!(@comments) do |comment|
  json.extract! comment, :id, :ip_address, :name, :rating
  json.url comment_url(comment, format: :json)
end
