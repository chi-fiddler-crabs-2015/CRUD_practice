get '/users/new' do
  erb :'users/new'
end

post '/users' do
  user = User.new({name: params[:name]})
  if user.save
    redirect '/'
  else
    redirect '/users/new'
  end
end

