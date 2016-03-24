class Town
  include Neo4j::ActiveNode
  include Neo4j::Timestamps

  property :name, type: String

    has_many :in, :town, type: :COME_FROM

end
