require 'sinatra'
# first ask for user name(first and last)
# - ask for user eye color
# - ask for favorite food
# - ask for favorite drink
# - practice passing the data through the url with redirects. 
# - make several views and make sure  that you understand what is being set and where.
# - have a results page that passes all of the data in.

get '/' do 
	erb :index #homepage
end

post '/name' do 
	name = params[:user_name]
	last_name = params[:last_name]
	redirect '/age?user_name=' + name + '&last_name=' + last_name
end

get '/age' do 
	name = params[:user_name]
	last_name = params[:last_name]
	erb :get_age, :locals => {:name => name, :last_name => last_name} 
end
post '/age' do 
	age = params[:user_age]
	name = params[:user_name]
	redirect '/numbers?user_name=' + name + '&user_age=' + age
end
get '/numbers' do
	age = params[:user_age]
	name = params[:user_name]
	erb :fav_num, :locals => {:name => name, :age => age}
	end

post '/numbers' do
     age = params[:user_age]
	name = params[:user_name]
	fav_num1 = params[:user_number_1] 
	fav_num2 = params[:user_number_2]
	fav_num3 = params[:user_number_3]
	redirect '/hair_color?user_name=' + name + '&user_age=' + age + '&user_number_1=' + fav_num1 + '&user_number_2=' + fav_num2 + '&user_number_3=' + fav_num3
end
get '/hair_color' do 
	age = params[:user_age]
	name = params[:user_name]
	fav_num1 = params[:user_number_1] 
	fav_num2 = params[:user_number_2]
	fav_num3 = params[:user_number_3]
	erb :hair_color, :locals => {:name => name, :age => age, :user_number_1 => fav_num1 , :user_number_2 => fav_num2, :user_number_3 => fav_num3 }
	end

post '/hair_color' do 
	age = params[:user_age]
	name = params[:user_name]
	fav_num1 = params[:user_number_1] 
	fav_num2 = params[:user_number_2]
	fav_num3 = params[:user_number_3]
	redirect '/fav_food?user_name=' + name + '&user_age=' + age + '&user_number_1=' + fav_num1 + '&user_number_2=' + fav_num2 + '&user_number_3=' + fav_num3 + '&user_hair=' + user_hair
end
get '/fav_food' do
end