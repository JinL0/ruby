require_relative "../services/weather_service"

class CitiesController < ApplicationController

  def cities
  	@cities = City.all
    # Uncomment and pass a parameter to the get function
    @w = WeatherService.get(params[:city])
    @name = params[:name]
	if @w
    # Bonus: Converting Kelvin to Fahrenheit
		@temperature = (9 / 5) * (@w[:temperature] - 273) + 32
		city = City.new(
			name: params[:city],
			temperature: @temperature, # Using the converted temperature
			description: @w[:description]
		)
		city.save
	end
  end

  def create
  	@cities = City.all
  	@cities.each do |c|
  		return if c.name == params[:cities]
  		end
  	@w = WeatherService.get(params[:city])
  	@name = params[:name]
  	if @w
    # Bonus: Converting Kelvin to Fahrenheit
		@temperature = (9 / 5) * (@w[:temperature] - 273) + 32
		city = City.new(
			name: params[:city],
			temperature: @temperature, # Using the converted temperature
			description: @w[:description]
		)
		city.save
	redirect_to "/cities/view"
	end
  end

  def view
  	@cities = City.all
  	end

  def update
  	update_params = {name: params[:city], 
  					 temperature: params[:temperature], 
  					 description: params[:description]}
    @cities = City.all
  	@cities.each do |c|
  		if c.name == params[:cities]
  			c.update(update_params)
  		end
  	end
  end
end
