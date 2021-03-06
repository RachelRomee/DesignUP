class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile
  has_many :posts
  has_many :comments
  has_many :likes


  accepts_nested_attributes_for :posts
  # for following
  has_many :active_relationships, class_name: "Relationship",
                                  foreign_key: "follower_id",
                                  # destroying a user should destroy follow relationship
                                  dependent: :destroy
  # for followed
  has_many :passive_relationships, class_name:  "Relationship",
                                 foreign_key: "followed_id",
                                 dependent:   :destroy
  # for following
  has_many :following, through: :active_relationships, source: :followed
  # for followed
  has_many :followers, through: :passive_relationships, source: :follower

  # Follows a user.
  def follow(other_user)
    active_relationships.create(followed_id: other_user.id)
  end

  # Unfollows a user.
  def unfollow(other_user)
    active_relationships.find_by(followed_id: other_user.id).destroy
  end

  # Returns true if the current user is following the other user.
  def following?(other_user)
    following.include?(other_user)
  end
# validate name column in user table
  validates :name, presence: true

  private

end
