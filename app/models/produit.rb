class Produit < ActiveRecord::Base
  validates :title, :presence => true
end
