class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile
  has_many :posts
  has_many :comments
  has_many :likes
  has_many :active_relationships, class_name: "Relationship",
                                  foreign_key: "follower_id",
                                  # destroying a user should destroy follow relationship
                                  dependent: :destroy

# validate name column in user table
  validates :name, presence: true
end
