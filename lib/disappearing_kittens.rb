class DisappearingKittens
  def get_directions
    uri = URI('http://which-technical-exercise.herokuapp.com/api/:robbie.c.clayton@gmail.com/directions')
    directions = Net::HTTP.get(uri)
    eval(directions)
  end
end
