require 'sinatra'

get '/random-cat' do
  @sampled_name = ["Brian", "Oscar", "Viking"].sample
  p @sampled_name
  erb :index
end

get '/named-cat' do
  @sampled_name = params[:name]
  p @sampled_name
  erb :index
end
