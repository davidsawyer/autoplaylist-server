json.array!(@tracks) do |track|
  json.extract! track, :uri, :user_uri
  json.url track_url(track, format: :json)
end