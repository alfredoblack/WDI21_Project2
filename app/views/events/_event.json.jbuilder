json.extract! event, :id, :title, :location, :comment, :user_id, :created_at, :updated_at
json.url event_url(event, format: :json)