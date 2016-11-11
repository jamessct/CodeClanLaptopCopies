require('sinatra')
require('sinatra/contrib/all')

get('/hi') do 
  return "Hello world"
end

get('/name/:title/:first/:last') do
  print params
  return "<h1>your name is #{ params[:title] }
  #{ params[:first] } #{params[:last]}<h1>"
end

get('/address') do
  print params
  return "<h3>you live at 1 Harriebrae Park"
end

get('/book/:title') do
  print params
  return "<h3>your favourite book is #{params[:title]}<h3>"
end


