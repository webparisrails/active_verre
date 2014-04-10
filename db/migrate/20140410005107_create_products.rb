class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :category, index: true
      t.string :title
      t.string :description
      t.decimal :prix
      t.boolean :dispo

      t.timestamps
    end
  end
end
