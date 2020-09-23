class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :name, presence: true, length: { maximum: 50 }
  validates :image, presence: true
  validates :comment, length: { maximum: 300 }
  validates :user_id, presence: true

  def user
    User.find(self.user_id)
  end
end
