class RemovePublicHolidayFromStores < ActiveRecord::Migration[5.2]
  def self.down
      remove_column :stores, :public_holiday_id
  end
end
