class Item < ActiveRecord::Base
  acts_as_ordered_taggable_on :labels

  mount_uploader :image, ImageUploader

  belongs_to :user
  has_many :comments
  has_many :item_tags
  has_many :tags, through: :item_tags

end
