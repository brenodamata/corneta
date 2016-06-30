json.array!(@posts) do |post|
  json.extract! post, :id, :title, :description, :team_id, :admin_user_id
  json.url post_url(post, format: :json)
end
