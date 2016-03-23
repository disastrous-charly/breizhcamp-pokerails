class Gym 
  include Neo4j::ActiveNode
  property :name, type: String
  property :created_at, type: DateTime



end
