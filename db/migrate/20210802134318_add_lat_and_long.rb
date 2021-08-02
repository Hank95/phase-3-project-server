class AddLatAndLong < ActiveRecord::Migration[6.1]
  def change
    add_column :bars, :latitude, :integer
    add_column :bars, :longitude, :integer
  end
end
