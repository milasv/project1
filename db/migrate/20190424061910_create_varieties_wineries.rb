class CreateVarietiesWineries < ActiveRecord::Migration[5.2]
  def change
    create_table :varieties_wineries, :id => false do |t|
      t.integer :variety_id
      t.integer :winery_id
    end
  end
end
