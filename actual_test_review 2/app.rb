require "sinatra"

get '/' do
  erb :sandwich_parts
end

post '/sandwichresults' do
  sandwich = params[:sandwich]
  redirect '/conformation_page?sandwich=' +  sandwich.to_s
end

get '/conformation_page' do
	# sandwhich_parts = params[:sandwich].split 
	sandwhich_parts = ["meat","veg","cheese"]
	erb :confirm, :locals => {:sandwhich_parts => sandwhich_parts}
end 


