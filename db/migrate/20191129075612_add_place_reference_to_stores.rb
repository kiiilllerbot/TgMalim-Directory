class AddPlaceReferenceToStores < ActiveRecord::Migration[5.2]
  def change
    add_reference :stores, :place, foreign_key: true
  end
end
