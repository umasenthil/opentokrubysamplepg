class RoomsController < ApplicationController
	require "opentok"
	def index
		@api_key = ENV['API_KEY']
    	opentok = OpenTok::OpenTok.new(ENV["API_KEY"], ENV["API_SECRET"])
    	session = opentok.create_session
    	@session_id = session.session_id
    	@token = opentok.generate_token(@session_id)
	end
end