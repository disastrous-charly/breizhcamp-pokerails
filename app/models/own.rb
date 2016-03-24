class Own
  include Neo4j::ActiveRel

  ## A relationship is what define a link between two nodes

  before_save :do_this

  from_class :Trainer
  to_class   :Pokemon
  type 'HAS_CAPTURED'
  #creates_unique

  property :level, type: Integer
  property :captured_at, type: DateTime
  property :nickname

  def do_this
    #a callback
  end
end
