# This class is controller to find the disappearing Kittens
class DisappearingKittens
  def retrieve_directions
    uri = URI('http://which-technical-exercise.herokuapp.com/api/:robbie.c.clayton@gmail.com/directions')
    directions = Net::HTTP.get(uri)
    JSON.parse directions.gsub('=>', ':')
  end
end
