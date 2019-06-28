json.extract! user, :id, :name, :emal, :created_at, :updated_at
json.url user_url(user, format: :json)
