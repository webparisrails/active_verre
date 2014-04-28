class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.references :user, index: true
      t.datetime :validated_at

      t.timestamps
    end
  end
end
