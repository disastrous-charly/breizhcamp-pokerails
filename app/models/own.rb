class Own
  include Neo4j::ActiveRel

  ## A relationship is what define a link between two nodes

  before_create :define_properties

  from_class :Trainer
  to_class   :Pokemon
  type 'HAS_CAPTURED'
  #creates_unique

  property :level, type: Integer
  property :captured_at, type: DateTime
  property :nickname

  def define_properties
    self.captured_at = DateTime.now
    self.level = rand(100)
  end
end
