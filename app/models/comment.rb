class Comment < ApplicationRecord

validates :user_id, :presence => true
validates :photo_id, :presence => true
validates :body, :presence => true

# a comment belongs to a photo
belongs_to :Photo, :class_name => "Photo", :foreign_key => "photo_id"

# a comment belongs to a user
belongs_to :User, :class_name => "User", :foreign_key => "user_id"


end
