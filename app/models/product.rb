class Product < ActiveRecord::Base
  belongs_to :category,
    inverse_of: :products
  attr_accessible  :title, :descritpion, :prix, :dispo
end
