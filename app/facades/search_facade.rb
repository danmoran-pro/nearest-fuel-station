class SearchFacade 
  def initialize(location)
		@location = location
  end
  
  def station_data
    nrel_service = NrelService.new
    nrel_service.get_elec_station(@location)
  end 
  
  
  def nearest_station 
    binding.pry
    #Got stuck here. Couldnt create a station. 
    #ActiveModel::UnknownAttributeError: unknown attribute 'location_country' for Station.
    #I get ':location_country=>nil" which is what I want(i think). not sure how to go from here. 
    Station.new(station_data)
  end 
end 