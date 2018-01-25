require './lib/api_interraction.rb'

# This class is controller to find the disappearing Kittens
class DisappearingKittens
  attr_reader :directions, :current_location, :current_direction,
              :direction_value, :rotations

  def initialize(current_direction = 'north')
    @api_interraction = ApiInterraction.new
    @directions = []
    @current_location = [0, 0]
    @current_direction = current_direction
    @direction_value = {
      'north' => [0, 1],
      'east' => [1, 0],
      'south' => [0, -1],
      'west' => [-1, 0]
    }
    @compass_points = ['north', 'east', 'south', 'west']
    @rotations = @compass_points.index(current_direction)
  end

  def find_kittens
    retrieve_directions
    @directions.each do |direction|
      change_rotation(-1) if direction == 'left'
      change_rotation(1) if direction == 'right'
    end
  end

  def change_rotation(incremental_amount)
    @rotations += incremental_amount
    @current_direction = @compass_points[@rotations % @compass_points.length]
  end


  private

  def retrieve_directions
    @directions = @api_interraction.retrieve_directions
  end

end
