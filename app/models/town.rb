class Town
  include Neo4j::ActiveNode
  include Neo4j::Timestamps

  property :name, type: String

    has_many :in, :trainers, type: :COME_FROM

end
