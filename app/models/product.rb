  class Product < ApplicationRecord
  # 5.2 adding the search functionality query below
  has_many :comments
  
  def self.search(search_term)
    Product.where("name LIKE?", "%#{search_term}%")
  end


  def highest_rating_comment
    comments.rating_desc.first
  end
  
end
