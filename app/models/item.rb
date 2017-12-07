class Item < ActiveRecord::Base

  mount_uploader :image, ImageUploader

  belongs_to :user
  has_many :comments
  has_many :item_tags
  has_many :tags, through: :item_tags

end
