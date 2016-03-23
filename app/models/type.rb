class Type
  include Neo4j::ActiveNode
  include Neo4j::Timestamps

  property :name, type: String
  property :created_at, type: DateTime



end
