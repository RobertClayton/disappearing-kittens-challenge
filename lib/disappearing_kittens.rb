require './lib/api_interraction.rb'

# This class is controller to find the disappearing Kittens
class DisappearingKittens
  attr_reader :directions, :current_location, :current_direction

  def initialize
    @api_interraction = ApiInterraction.new
    @directions = []
    @current_location = [0, 0]
    @current_direction = 'north'
  end

  def retrieve_directions
    @directions = @api_interraction.retrieve_directions
  end
end
