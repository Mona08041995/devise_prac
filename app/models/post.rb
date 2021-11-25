class Post < ApplicationRecord
	has_rich_text :content
	has_many :post_tags
end
