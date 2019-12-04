class AddLongitudeToStores < ActiveRecord::Migration[5.2]
  def change
    add_column :stores, :longitude, :decimal
  end
end
