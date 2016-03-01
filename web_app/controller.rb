#Require Sinatra
require 'sinatra'
#Require any other documents the controller may depend on (**cough** models **/cough**)
require_relative 'models/guess_num.rb'

#Create an index Route
get '/' do
	erb :index
end

post '/guess' do
	erb :result
	@guess = params[:guess].to_i
	@cpunumber = Turn.cpunumber
	puts @guess.class
	puts @cpunumber.class
	if @guess == @cpunumber
		redirect '/win'
	elsif @cpunumber != @guess
		redirect '/result'
	end
end


post '/result' do
	
end

post '/win' do

end


#Create any other routes that make sense with the design of your application
	#HINT: There should be at least two others
