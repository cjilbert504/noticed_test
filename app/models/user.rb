class User < ApplicationRecord
  has_many :activity_notifications, as: :recipient
end
