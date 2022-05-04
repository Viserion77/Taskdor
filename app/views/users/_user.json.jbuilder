json.extract! user, :id, :userid, :name, :nickname, :created_at, :updated_at
json.url user_url(user, format: :json)
