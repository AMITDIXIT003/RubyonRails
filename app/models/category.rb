class Category < ApplicationRecord
	atrr_accessor :name
	has_many :post
end
