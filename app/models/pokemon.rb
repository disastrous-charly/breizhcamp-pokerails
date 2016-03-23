class Pokemon
  include Neo4j::ActiveNode
  include Neo4j::Timestamps

  #property :name, type: String
  property :name, type: String, constraint: :unique
  validates :name, presence: true

  #property :stats
  #serialize :stats

end
#s = Pokemon.create(stats: { ATK: 300, DEF: 250 })
