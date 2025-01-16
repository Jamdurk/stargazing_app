class Star < ApplicationRecord
   validates :name, presence: true, length: { maximum: 25 }, uniqueness: true
   validates :description, presence: true, length: { maximum: 399 }
   validates :distance, presence: true, length: { maximum: 49 }
   validates :fact, presence: true, length: { maximum: 399 }
   validates :lifespan, presence: true, length: { maximum: 149 }
   validates :size, presence: true, length: { maximum: 49 }

   

end
