class Comment < ActiveRecord::Base
  belongs_to :product
  validates :author, :opinion, presence: true
	validates :rating, numericality: true
end
