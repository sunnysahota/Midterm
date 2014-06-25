class Value


  attr_accessor :city, :state, :address

def initialize(city, state, address)
    @city = city.gsub(" ", "+")
    @state = state
    @address = address.gsub(" ", "+")
end


def home

	url = HTTParty.get('http://www.zillow.com/webservice/GetSearchResults.htm?zws-id=X1-ZWz1dufpkstwcr_76gmj&address=[@address]&citystatezip=[@city]%2C+[@state]')
	homes = url
	puts homes["searchresults"]["response"]["results"]["result"]["zestimate"]["amount"]["__content__"]

end

end

