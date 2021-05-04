json.extract! mybook, :id, :title, :description, :email, :phone, :image, :created_at, :updated_at
json.url mybook_url(mybook, format: :json)
