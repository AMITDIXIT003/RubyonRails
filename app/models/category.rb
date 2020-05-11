class Category < ApplicationRecord
	atrr_accessible :name
	has_many :posts
end
