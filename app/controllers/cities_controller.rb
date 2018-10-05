require_relative "../services/weather_service"

class CitiesController < ApplicationController

  def cities
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
end
