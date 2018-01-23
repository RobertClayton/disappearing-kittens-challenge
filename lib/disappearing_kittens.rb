# This class is controller to find the disappearing Kittens
class DisappearingKittens
  attr_reader :directions

  def initialize
    @directions = []
  end

  def retrieve_directions
    uri = URI('http://which-technical-exercise.herokuapp.com/api/:robbie.c.clayton@gmail.com/directions')
    api_request = JSON.parse Net::HTTP.get(uri).gsub('=>', ':')
    @directions = api_request['directions']
  end
end
