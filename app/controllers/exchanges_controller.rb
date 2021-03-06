class ExchangesController < ApplicationController


  def index
    @trainers = Trainer.all
    #choose a trainer on main page
  end

  def show
    if !@trainer
      @trainer = Trainer.find_by(name: cookies[:trainer_name])
    end
  end

  def choose_trainer
    @trainer = Trainer.find_by(name: exchange_params[:toto]) #toto is not a good variable name, don't do that at home!
    cookies[:trainer_name] = @trainer.name
    @trainer_team = @trainer.pokemons.to_a
    render :show
  end

  private
    def exchange_params
      params.require(:exchange).permit!
      #params.require(:trainer).permit!
    end

end
