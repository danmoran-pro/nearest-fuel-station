class NrelService
 
  def get_elec_station(address)
    response = connection.get("nearest.json") do |req|
      req.params[:fuel_type] = 'ELEC'
      req.params[:location] = address
      req.params[:latitude] = 39.7501605
      req.params[:longitude] = -104.9951224
      req.params[:limit] = 1
    end 
    json = JSON.parse(response.body, symbolize_names: true)
  end 


  private 
  
    def connection
      Faraday.new(url: "https://developer.nrel.gov/api/alt-fuel-stations/v1/") do |f|
        f.adapter Faraday.default_adapter
        f.params[:api_key] = ENV["NREL_API_KEY"]
      end 
    end 
  
end 