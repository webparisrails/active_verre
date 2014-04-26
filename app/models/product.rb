class Product < ActiveRecord::Base
  belongs_to :category
  attr_accessible  :title, :description, :prix, :dispo
end
