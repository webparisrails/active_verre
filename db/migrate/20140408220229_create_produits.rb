class CreateProduits < ActiveRecord::Migration
  def change
    create_table :produits do |t|
      t.string :categorie
      t.string :titre
      t.string :description
      t.decimal :prix

      t.timestamps
    end
  end
end
