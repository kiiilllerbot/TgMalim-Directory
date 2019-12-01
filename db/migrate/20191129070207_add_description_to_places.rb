class AddDescriptionToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :description, :text
  end
end
