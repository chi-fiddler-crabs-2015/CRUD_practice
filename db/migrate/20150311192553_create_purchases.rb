class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.belongs_to  :shirt
      t.belongs_to  :purchaser
    end
  end
end
