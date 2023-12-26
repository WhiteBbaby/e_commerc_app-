class Cart < ApplicationRecord
    belongs_to :user
    has_many :orderables, dependent: :destroy
    has_many :electronics, through: :orderables
  
    def total
      orderables.to_a.sum { |orderable| orderable.total }
    end
end
