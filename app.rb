require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @string = params[:user_phrase]
    a1 = PigLatinizer.new(@string)
    "#{a1.piglatinize(@string)}"
  end
end

#"Once upon a time and a very good time it was there
#was a moocow coming down along the road and this moocow
#that was coming down along the road met a nice little
#boy named baby tuckoo"
