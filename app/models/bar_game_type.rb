class BarGameType < ActiveRecord::Base   
    has_many :games 
    has_many :bars, through: :games

end