require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @user_name = params[:name]
    reverse_name = @username.reverse
    "#{reverse_name}" 
  end

end