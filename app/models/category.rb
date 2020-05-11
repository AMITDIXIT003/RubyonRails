class Category < ApplicationRecord
	atrr_accessible :name
	has_many :post
end
