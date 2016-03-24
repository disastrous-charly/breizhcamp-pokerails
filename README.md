Hello world !

This is a sample app in Rails 5, using ActionCable for real-time with websocket and Neo4j to manage data

Some info : REST API for Neo4j : http://neo4j.com/docs/stable/rest-api.html

We are using the (AWESOME) Neo4jrb gem : https://github.com/neo4jrb/neo4j
Neo4j is using CYPHER language for querying, but it's all under an ORM for us.

CYPHER example :
CREATE (n:`Pokemon` {props}) RETURN ID(n) | {:props=>{:uuid=>"a66d1e28-6a9b-49e3-9b1b-adfd132c8732", :created_at=>1458766500, :updated_at=>1458766531, :name=>"Métamorph"}}

We are using ActionCable and Redis for the websocket part 


open your terminal :
###to install gem
bundle install
###to generate model/controller/view and routes
rails g scaffold Pokemon name:string create_at:datetime
###to launch the server
rails s
###to launch the console
rails c
