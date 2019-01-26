class Category < ApplicationRecord
  validates_presence_of :name
  belongs_to :category_subject
end
