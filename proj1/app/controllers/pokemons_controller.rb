class PokemonsController < ApplicationController
  def capture
  	@pokemon = Pokemon.where(id: params[:id])
  	@pokemon.update_all(:trainer_id => current_trainer)
  	redirect_to "/"
  end
end
