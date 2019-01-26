class Order < ApplicationRecord
  belongs_to :student
  belongs_to :service
end
