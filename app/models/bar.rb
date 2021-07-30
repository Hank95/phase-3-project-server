class Bar < ActiveRecord::Base 
    has_many :games
    has_many :bar_game_types, through: :games

end