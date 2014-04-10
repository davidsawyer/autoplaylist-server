json.array!(@tracks) do |track|
  json.extract! track, :uri, :user_id
  json.url track_url(track, format: :json)
end