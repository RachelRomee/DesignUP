class Post < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :comments
  has_many :likes

  accepts_nested_attributes_for :user
  accepts_nested_attributes_for :comments
  accepts_nested_attributes_for :likes


end
