class Photo < ApplicationRecord

  validates :user_id, :presence => true

  # a photo belongs to a user
  belongs_to :user, :class_name => "User", :foreign_key => "user_id"

  # photos have many comments
  has_many :comments, :class_name => "Comment", :foreign_key => "photo_id"

# Photos have many fans through likes (source: user)
has_many :fans, :through => :likes, :source => :user

end
