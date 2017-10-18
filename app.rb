require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @user_name = params[:name]
    reverse_name = @user_name.reverse
    "#{reverse_name}"
  end

  get '/square/:number' do
    @number = params[:number]
    number = @number.to_i
    square = number * number
    "#{square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    number = @number.to_i
    @phrase * number
  end

end
