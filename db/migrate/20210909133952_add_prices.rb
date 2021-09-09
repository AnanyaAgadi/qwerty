class AddPrices < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :prices, :string
  end
end
