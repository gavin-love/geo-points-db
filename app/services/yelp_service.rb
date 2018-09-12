class YelpService
  attr_reader :latitude, :longitude

  def initialize(company)
    latitude = company.lat
    longitude = company.lng
  end

  def info
    binding.pry
    data
  end

  private
  def conn
    Faraday.new("https://api.yelp.com/v3")
  end

  def response
    conn.get "/businesses/search?latitude=#{latitude}&longitude=#{longitude}" do |request|

    end
  end
  
  def data
    json = JSON.parse(response.body, symbolize_names: true)
  end
end