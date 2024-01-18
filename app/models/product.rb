class Product < ApplicationRecord
  belongs_to :uom
  belongs_to :category
  belongs_to :supplier
end
