require 'json'
require 'pry'
require 'httpparty'

class App < Sinatra:: Base

configure do
  enable :logging
end



get ("/") do
  render(:erb, :index)
end

post ("/new") do
  @user_info = []
  @user_info.push(:user_choice => params[:user_choice])
  @user_info.push(:user_zip    => params[:user_zip])
  logger.info @user_info
# binding.pry
redirect to ("/result")
end

get ("/result") do

  render(:erb, :result)
end





end
