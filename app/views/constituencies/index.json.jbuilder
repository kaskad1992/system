json.array!(@constituencies) do |constituency|
  json.extract! constituency, :id, :name, :number_of_voters
  json.url constituency_url(constituency, format: :json)
end
