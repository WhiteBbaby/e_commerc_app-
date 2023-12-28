class Electronic < ApplicationRecord
  has_many :orderables
  mount_uploader :image, ImageUploader
  validates :name, presence: true, length: { maximum: 100 }
  validates :price, presence: true
  validates :description, presence: true, length: { maximum: 300 }
  validates :fulldescription, presence: true
end
