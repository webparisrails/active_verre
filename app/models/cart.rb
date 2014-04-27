class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :cart_items

  def price
    cart_items.map(&:price).sum
  end

  def self.active
    where(validated_at: nil)
  end
end
