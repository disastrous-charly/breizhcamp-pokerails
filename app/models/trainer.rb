class Trainer
  include Neo4j::ActiveNode
  include Neo4j::Timestamps
  property :name, type: String
  #property :created_at, type: DateTime
  #property :team
  #serialize :team

  has_one :out, :town, type: :COME_FROM
  has_many :out, :pokemons_collection, rel_class: :Own, model_class: :Pokemon
end