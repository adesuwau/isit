class App < Sinatra:: Base





get ("/") do
  render(:erb, :index)
end

post ("/") do

end

get ("/result") do

  render(:erb, :result)
end





end
