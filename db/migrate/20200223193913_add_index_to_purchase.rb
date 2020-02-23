class AddIndexToPurchase < ActiveRecord::Migration[6.0]
  def change
    add_index :purchases, [:user_id, :purchasable_id], unique: true
  end
end
