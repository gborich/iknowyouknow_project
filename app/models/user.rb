class User < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :login
  belongs_to :user_role
  belongs_to :country
  belongs_to :student
  belongs_to :teacher
end
