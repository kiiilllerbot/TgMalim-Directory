class RemoveDescriptionFromPlaces < ActiveRecord::Migration[5.2]
  def change
    remove_column :places, :description, :string
  end
end
