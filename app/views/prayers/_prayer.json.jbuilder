json.extract! prayer, :id, :description, :status_id, :type_id, :user_id, :tag_id, :datetime_to_pray, :location,
              :created_at, :updated_at
json.url prayer_url(prayer, format: :json)
