get '/users/new' do
  erb :'users/new'
end

post '/users' do
  user = User.create(params)
  if user.valid?
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/users/new'
  end
end

post '/login' do
  user = User.find_by(name: params[:name])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect '/shirts'
  else
    @errors = 'Name or password incorrect'
    erb :"users/login"
  end
end

get '/login' do
  erb :"users/login"
end

get '/logout' do
  session.delete(:user_id)
  redirect '/'
end

