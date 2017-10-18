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
    phrase = @phrase.gsub(/(%20)/, ' ')
    number = @number.to_i
    phrase * number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
    
end
