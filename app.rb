require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pl = PigLatinizer.new #creates new instance of the PigLatinizer class
    @piglatin = pl.piglatinize(params[:user_phrase]) #sets instance variable equal to users input

    erb :results #displays results.erb on user input
  end
end