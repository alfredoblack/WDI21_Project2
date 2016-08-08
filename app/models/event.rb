class Event < ApplicationRecord
  mount_uploader :event_image, EventImageUploader
  belongs_to :user
end
