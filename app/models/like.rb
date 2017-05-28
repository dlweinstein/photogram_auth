class Like < ApplicationRecord

  validates :user_id, :presence => true, :uniqueness => { :scope => :photo_id }
  validates :photo_id, :presence => true

  # a like belongs to a user
  belongs_to :user, :class_name => "User", :foreign_key => "user_id"

  # a like belongs to a photo
  belongs_to :photo, :class_name => "Photo", :foreign_key => "photo_id"

end
