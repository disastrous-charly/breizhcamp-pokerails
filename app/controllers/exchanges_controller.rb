class ExchangesController < ApplicationController


  def index
    trainers = Trainer.all
    #choose a trainer on main page
  end

  def show
    @trainer = Trainer.find_by(name: params[:id])
    #load pokemon team
    @trainer.pokemons.each_with_rel do |node,rel|
      puts node.name
      rel.level = 13
      puts rel.level
    end
    @trainer.save!
  end

end
