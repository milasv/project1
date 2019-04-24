class CreateVarieties < ActiveRecord::Migration[5.2]
  def change
    create_table :varieties do |t|
      t.text :name
      t.text :color
      t.text :origin
      t.text :food
      t.text :history
      t.text :image

      t.timestamps
    end
  end
end
