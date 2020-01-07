require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do 
        pig = PigLatinizer.new
        @pig = pig.piglatinize(params[:user_phrase])
        erb :pig_latin
    end
end