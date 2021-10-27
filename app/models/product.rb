class Product < ApplicationRecord
  # 5.2 adding the search functionality query below
  def self.search(search_term)
    Product.where("name LIKE?", "%#{search_term}%")
  end
end
