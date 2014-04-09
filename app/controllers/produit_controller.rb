class ProduitController < ApplicationController
	def new
      @produit = Produit.new
   end
end
