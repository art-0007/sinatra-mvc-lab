require_relative 'config/environment'



class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @pig_phrase = PigLatinizer.new.piglatinize(params["user_phrase"])
        # text_from_user = params[:user_phrase]
        # @pig_prase = PigLatinizer.new(text_from_user)
        
        erb :user_input
    end 

end