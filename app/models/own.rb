class Own
  include Neo4j::ActiveRel
  before_save :do_this

  from_class :Trainer
  to_class   :Pokemon
  type 'HAS_CAPTURED'
  #creates_unique

  property :level, type: Integer
  property :captured_at
  property :nickname

  def do_this
    #a callback
  end
end
