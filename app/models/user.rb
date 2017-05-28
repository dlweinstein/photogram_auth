class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  validates :username, :presence => true, :uniqueness => true

# a user has many photos
has_many :photos, :class_name => "Photo", :foreign_key => "user_id"


# a user has many comments
has_many :comments, :class_name => "Comment", :foreign_key => "user_id"

# a user has many likes
has_many :likes, :class_name => "Like", :foreign_key => "user_id"

# a photo has many likes
has_many :likes, :class_name => "Like", :foreign_key => "photo_id"

# Users have many liked_photos through likes (source: photo)
has_many :liked_photos, :through => :likes, :source => :photo


end
