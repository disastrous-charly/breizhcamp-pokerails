json.array!(@pokemons) do |pokemon|
  json.extract! pokemon, :id, :name, :created_at
  json.url pokemon_url(pokemon, format: :json)
end
