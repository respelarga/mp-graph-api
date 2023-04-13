class Product < ApplicationRecord
    
    validates :handle, presence: true, uniqueness: true

end
