class GameTypeController < ApplicationController

    get '/game_types' do
        game_types = BarGameType.all
        game_types.to_json
    end


    def game_type_params 
        allowed_params = %w(game_type description)
    end

end
