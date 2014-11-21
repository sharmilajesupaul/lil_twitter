get "/" do
  if session[:user_id]
    redirect "/sessions/feed"
  else
    erb :index
  end
end

###### Sessions ######
post "/sessions" do
  if @user = User.find_by(username: params[:user][:username])
    if @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect "/sessions/feed"
    end
  else
    redirect "/"
  end
end

get '/logout' do
  session.clear

  redirect "/"
end

get '/sessions/feed' do
  @user = User.find(session[:user_id])
  @followers = @user.followees

  erb :"users/feed"
end

get "/session_view" do
  erb :session_view
end


##### Users #######

# your own tweets should be in your tweet
get '/users/:id' do
  @user = User.find(params[:id])

  erb :"users/profile"
end

get '/users/:id/following' do
  @user = User.find(params[:id])

  erb :"users/following"
end

get '/users/:id/followers' do
  @user = User.find(params[:id])

  erb :"users/followers"
end

post '/users' do
  User.create(params[:user])
  redirect "/"
end

post '/tweets' do
  @user = User.find(session[:user_id])
  @user.tweets << Tweet.create(params[:tweet])

  redirect "/sessions/feed"
end

######## Follow #########
post '/users/:id/follow' do
  @user = User.find(params[:id])
  @logged_in_user = User.find(session[:user_id])
        @user.followers << @logged_in_user if session[:user_id]
  redirect "/"
end



