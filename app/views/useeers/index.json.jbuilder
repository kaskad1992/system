json.array!(@useeers) do |useeer|
  json.extract! user, :id, :login, :crypted_password, :name, :surname, :role, :persistence_token
  json.url useeer_url(useeer, format: :json)
end
