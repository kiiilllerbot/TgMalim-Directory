json.extract! store, :id, :name, :contact, :description, :opening, :closing, :coordinates, :category_id, :user_id, :holiday_id, :created_at, :updated_at
json.url store_url(store, format: :json)
