class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :category
      t.string :title
      t.string :description
      t.decimal :price
      t.boolean :availability

      t.timestamps
    end
  end
end
