json.extract! post, :id, :name, :body, :commentCount, :viewCount, :author, :created_at, :updated_at
json.url post_url(post, format: :json)
