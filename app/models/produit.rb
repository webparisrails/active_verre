class Produit < ActiveRecord::Base
	validates :categorie, :presence => true
	validates :titre, :presence => true
	validates :description, :presence => true
	validates :prix, :presence => true
end
