class Product < ApplicationRecord
  # 5.9 adding validation for presence of name for any new product created
  validates :name, presence: true 
  validates :price, presence: true
  
  has_many :comments
  
  # 5.2 adding the search functionality query below
  def self.search(search_term)
    Product.where("name LIKE?", "%#{search_term}%")
  end


  def highest_rating_comment
    comments.rating_desc.first
  end

  def average_rating
    comments.average(:rating).to_f
  end
  
end
