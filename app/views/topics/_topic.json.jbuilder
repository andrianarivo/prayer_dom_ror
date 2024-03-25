json.extract! topic, :id, :title, :description, :tag_id, :created_at, :updated_at
json.url topic_url(topic, format: :json)
