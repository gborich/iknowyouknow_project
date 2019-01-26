class Service < ApplicationRecord
  belongs_to :teacher
  belongs_to :subject
  belongs_to :service_tag
  has_many :orders
end
