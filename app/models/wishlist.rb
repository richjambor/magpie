class Wishlist < ActiveRecord::Base
	has_many :items, class_name: 'WishlistItem'
end
