class CategorySubject < ApplicationRecord
  belongs_to :subject
  belongs_to :category
end
