json.extract! user, :id, :first_name, :middle_name, :last_name, :username, :password, :phone_number, :email, :role_id, :created_at, :updated_at
json.url user_url(user, format: :json)
