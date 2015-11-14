require 'json'
require 'pry'

class App < Sinatra:: Base

configure do
  enable :logging
end



get ("/") do
  render(:erb, :index)
end

post ("/new") do
  @user_info = []
  @user_info.push(:user_choice => params[:hot])
    @user_info.push(:user_choice => params[:cold])
        @user_info.push(:user_choice => params[:snow])
            @user_info.push(:user_choice => params[:rain])
  @user_info.push(:user_zip => params[:user_zip])
  logger.info @user_info
binding.pry
end

get ("/result") do

  render(:erb, :result)
end





end
