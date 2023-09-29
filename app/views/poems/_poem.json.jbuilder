json.extract! poem, :id, :name, :style, :poem, :poet_id, :created_at, :updated_at
json.url poem_url(poem, format: :json)
