class Type
  include Neo4j::ActiveNode
  include Neo4j::Timestamps

  property :name, type: String
  property :created_at, type: DateTime

  has_many :in, :pokemons, type: "HAS_TYPE"

end

#Pokemon.find_by(name: "Pikachu").type = Type.find_by(name: "Electric")
