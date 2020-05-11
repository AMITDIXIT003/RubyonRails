class Post < ApplicationRecord
	atrr_accessible :title, :body, :category_id,  :author_id
	belongs_to :category
end
