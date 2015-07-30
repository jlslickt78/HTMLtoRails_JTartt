class Product < ActiveRecord::Base
	  #add validation here
	validates :name, :description, :quantity_on_hand, :img_th, :image_full, presence: true
	validates :selling_price, :product_cost, :shipping_weight, numericality: true

	has_many :comments, :dependent => :destroy
end
