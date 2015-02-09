json.array!(@vootes) do |voote|
  json.extract! voote, :id, :number, :id_const, :id_com
  json.url voote_url(voote, format: :json)
end
