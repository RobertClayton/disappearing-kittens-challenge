require './lib/api_interraction.rb'

# This class is controller to find the disappearing Kittens
class DisappearingKittens
  attr_reader :directions

  def initialize
    @api_interraction = ApiInterraction.new
    @directions = []
  end

  def retrieve_directions
    @directions = @api_interraction.retrieve_directions
  end
end
