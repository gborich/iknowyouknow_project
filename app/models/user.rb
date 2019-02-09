# == Schema Information
#
# Table name: users
#
#  id           :integer          not null, primary key
#  name         :string
#  lastname     :string
#  login        :string
#  password     :string
#  mail         :string
#  age          :string
#  rating       :string
#  awards       :string
#  phone        :string
#  description  :string
#  admin        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_role_id :integer
#

class User < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :login
  belongs_to :user_role
  belongs_to :country
  belongs_to :student
  belongs_to :teacher
end
