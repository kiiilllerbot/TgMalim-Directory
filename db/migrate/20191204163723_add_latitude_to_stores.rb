class AddLatitudeToStores < ActiveRecord::Migration[5.2]
  def change
    add_column :stores, :latitude, :decimal
  end
end
