class StocksController < ApplicationController
	include ActionController::Live

	def index
	end

	def prices
	response.headers['Content-Type'] = 'text/event-stream'
		3.times do |n|
			response.stream.write "event: price\n"
			response.stream.write "data: #{n} \n\n"
			sleep 1
		end
	ensure
		response.stream.close
	end

end
