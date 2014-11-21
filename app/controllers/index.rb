get "/" do
  erb :index
end

###### Sessions ######
post "/sessions" do
  if @user = User.find_by(username: params[:user][:username])
    if @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect "/feed"
    end
  else
    redirect "/"
  end
end

delete '/sessions/:id' do
  session.clear

  redirect "/"
end

##### Users #######
get "/session_view" do
  erb :session_view
end

post '/users' do
  User.create(params[:user])
  redirect "/"
end
