json.array!(@tracks) do |track|
  json.extract! track, :id, :user_id, :name, :artist, :album, :uri
  json.url track_url(track, format: :json)
end
