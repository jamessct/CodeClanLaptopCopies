require('sinatra')
require('sinatra/contrib/all')
require('json')
require_relative('./models/calculator')

get('/') do
  erb(:home)
end

get('/all/:num1/:num2') do
  content_type( :json )
  calculator = Calculator.new( params[:num1].to_i, params[:num2].to_i )
  result = {
      add: calculator.add,
      subtract: calculator.subtract,
      multiply: calculator.multiply,
      divide: calculator.divide,
      to_the_power_of: calculator.to_the_power_of
  }
  result.to_json()
end

get('/add/:num1/:num2') do
  calculator = Calculator.new( params[:num1].to_i, params[:num2].to_i )
  @calculation = calculator.add()
  erb(:result)
end

get('/subtract/:num1/:num2') do
  calculator = Calculator.new( params[:num1].to_i, params[:num2].to_i )
  @calculation = calculator.subtract()
  erb(:result)
end

get('/multiply/:num1/:num2') do
  calculator = Calculator.new( params[:num1].to_i, params[:num2].to_i )
  @calculation = calculator.multiply()
  erb(:result)
end

get('/divide/:num1/:num2') do
  calculator = Calculator.new( params[:num1].to_i, params[:num2].to_i )
  @calculation = calculator.divide()
  erb(:result)
end

get('/to_the_power_of/:num1/:num2') do
  calculator = Calculator.new( params[:num1].to_i, params[:num2].to_i )
  @calculation = calculator.to_the_power_of()
  erb(:result)
end