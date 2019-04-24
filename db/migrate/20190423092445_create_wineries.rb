class CreateWineries < ActiveRecord::Migration[5.2]
  def change
    create_table :wineries do |t|
      t.text :name
      t.date :year
      t.text :founder
      t.text :history
      t.text :image
      t.integer :region_id

      t.timestamps

    end
  end
end
