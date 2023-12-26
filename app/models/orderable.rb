class Orderable < ApplicationRecord
  belongs_to :electronic
  belongs_to :cart

  def total
    electronic.price * quantity
  end
end
