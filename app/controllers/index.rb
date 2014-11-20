get "/" do
  erb :index
end

###### Sessions ######
get "/sessions/new" do
  erb :sign_in
end

post "/sessions" do

 # redirect to feed
end

delete '/sessions/:id' do
  redirect "/"
end

##### Users ########
get '/users/new' do
  # render sign-up page

  erb ':/users/new'
end

post '/users' do
  # sign-up a new user
end
