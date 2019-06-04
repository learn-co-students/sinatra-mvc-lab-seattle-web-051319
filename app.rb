require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do 
        erb :user_input
    end

    post '/piglatinize' do 
        user_phrase = params[:user_phrase]
        @pig_latin = PigLatinizer.new
        return "#{@pig_latin.piglatinize(user_phrase)}"
    end
end