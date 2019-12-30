json.extract! comment, :id, :title, :body, :raw, :created_at, :updated_at
json.url comment_url(comment, format: :json)
