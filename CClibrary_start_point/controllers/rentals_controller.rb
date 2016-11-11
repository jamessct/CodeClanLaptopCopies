require 'pry-byebug'
require_relative('../models/rental.rb')
require_relative('../models/book')
require_relative('../models/member')

#index
get '/rentals' do
  @rentals = Rental.all()
  erb :'rentals/index'
end

#new
get '/rentals/new' do
  @books = Book.all()
  @members = Member.all()
  erb :'rentals/new'
end

#create
post '/rentals' do
  rental = Rental.new(params)
  rental.save
  redirect( to('/rentals'))
end

#
