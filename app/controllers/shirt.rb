get '/shirts' do
  @user = User.find_by(id: session[:user_id])
  @shirts = @user.shirts
  erb :"shirts/show"
end

get '/shirts/new' do
  erb :"shirts/new"
end