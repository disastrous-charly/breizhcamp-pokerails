class Pokemon
  include Neo4j::ActiveNode
  include Neo4j::Timestamps

  #property :name, type: String
  property :name, type: String, constraint: :unique
  validates :name, presence: true

  #property :stats
  #serialize :stats

  has_one :out, :evolution, type: :EVOLVE_IN, model_class: :Pokemon
  #has_one :in, :pokemon, type: :EVOLVE_FROM
  #has_many :in, :trainers, rel_class: :Own
end
#s = Pokemon.create(stats: { ATK: 300, DEF: 250 })
#t.pokemons << Pokemon.find_by(name: "Salamèche")
