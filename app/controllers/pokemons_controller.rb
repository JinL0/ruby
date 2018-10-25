class PokemonsController < ApplicationController
  def capture
  	@pokemon = Pokemon.where(id: params[:id])
  	@pokemon.update_all(:trainer_id => current_trainer)
  	redirect_to "/"
  end

  def damage
  	@pokemon = Pokemon.find_by(params[:id])
  	@pokemon.health-=10
  	if @pokemon.health <= 0
  		Pokemon.destroy(@pokemon.id)
  	end
  	@pokemon.save
  	redirect_to controller: "trainers", action: "show", id: current_trainer
  end

  def new
  	@pokemon = Pokemon.new
  end

  def create
  	@pokemon = Pokemon.create(:name=> params[:pokemon][:name],
	:level=> 1,
	:health=> 100,
	:trainer_id=> current_trainer.id)
	if !@pokemon.valid?
  		flash[:error] = @pokemon.errors.full_messages.to_sentence
  		@pokemon.save
  		redirect_to controller: "pokemons", action: "new"
  	else 
  		redirect_to controller: "trainers", action: "show", id: current_trainer.id
  		@pokemon.save
  	end
  end 
end
