class RenamePrices < ActiveRecord::Migration[5.2]
  def change
    rename_column :products, :prices, :price
  end
end
