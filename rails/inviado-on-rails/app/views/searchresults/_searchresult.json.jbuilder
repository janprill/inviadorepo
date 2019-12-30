json.extract! searchresult, :id, :query, :source, :results, :raw, :created_at, :updated_at
json.url searchresult_url(searchresult, format: :json)
