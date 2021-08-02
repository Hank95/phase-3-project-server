class RemoveCoords < ActiveRecord::Migration[6.1]
  def change
    remove_column :bars, :coords, :integer
  end
end
