json.extract! user, :id, :id, :nom, :prenom, :email, :created_at, :updated_at
json.url user_url(user, format: :json)
