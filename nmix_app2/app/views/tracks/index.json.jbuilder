json.array!(@tracks) do |track|
  json.extract! track, :id, :title, :artist, :album, :uri
  json.url track_url(track, format: :json)
end
