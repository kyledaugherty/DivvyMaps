class GoogleApi
  def self.get_coordinates_from_address(address)
  	uri = URI("http://maps.googleapis.com/maps/api/geocode/json?address=#{URI::escape(address)}")
	json = Net::HTTP.get(uri)
  end

  def self.get_directions_from_addresses(start_address, end_address, mode = "bicycling")
  	api = "AIzaSyBYsTTIOfcPfQw_pa8wO0KC62frazyllps"
  	uri = URI("https://maps.googleapis.com/maps/api/directions/json?origin=#{URI::escape(start_address)}&destination=#{URI::escape(end_address)}&key=#{api}&avoid=highways&mode=#{mode}")
  	json = Net::HTTP.get(uri)
  end
end
