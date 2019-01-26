class Subject < ApplicationRecord
  validates_presence_of :name
  has_many :services
  belongs_to :category_subject
end
