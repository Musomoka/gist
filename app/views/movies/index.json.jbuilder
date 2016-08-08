json.array!(@movies) do |movie|
  json.extract! movie, :id, :Title, :Desscription, :Movie_length, :Director, :rating
  json.url movie_url(movie, format: :json)
end
