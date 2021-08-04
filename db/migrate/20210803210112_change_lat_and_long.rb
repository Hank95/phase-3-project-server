class ChangeLatAndLong < ActiveRecord::Migration[6.1]
  def change
    change_column :bars, :latitude, :float
    change_column :bars, :longitude, :float
  end
end
