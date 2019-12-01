class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :contact
      t.text :description
      t.time :opening
      t.time :closing
      t.string :coordinates
      t.references :category, foreign_key: true
      t.references :user, foreign_key: true
      t.references :holiday, foreign_key: true

      t.timestamps
    end
  end
end
