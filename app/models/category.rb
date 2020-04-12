class Category < ApplicationRecord
	validates :name, presence: true
	has_many :keywords,  :dependent => :delete_all
	# belongs_to :products,  :dependent => :destroy
end
