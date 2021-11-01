class AddDataToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :rating, :integer
    add_reference :comments, :product, foreign_key: true
  end
end
