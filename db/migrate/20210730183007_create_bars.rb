class CreateBars < ActiveRecord::Migration[6.1]
  def change
    create_table :bars do |t|
      t.string :name
      t.string :description
      t.integer :coords
      t.integer :rating
      t.belongs_to :city
    end
  end
end
