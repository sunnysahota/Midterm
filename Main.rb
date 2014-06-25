require_relative 'lib/value'

require 'rubygems'
require 'pry'
require 'httparty'



def information
	puts "-----------New Home Value Listing-----------"
 	puts "Please enter the city name: "
	city = gets.strip

	puts "Please enter the state: "
	state = gets.strip

	puts "Please enter the home address: "
	address = gets.strip

  Value.new(city, state, address)
end

value = information

value.home
