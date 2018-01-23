# This class is responsible for interracting with the API
class ApiInterraction
  def retrieve_directions
    uri = URI('http://which-technical-exercise.herokuapp.com/api/:robbie.c.clayton@gmail.com/directions')
    api_request = JSON.parse Net::HTTP.get(uri).gsub('=>', ':')
    api_request['directions']
  end
end
