class CreateRegionsVarieties < ActiveRecord::Migration[5.2]
  def change
    create_table :regions_varieties, :id => false do |t|
      t.integer :region_id
      t.integer :variety_id
    end
  end
end
