# == Schema Information
#
# Table name: students
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id_id  :integer
#

class Student < ApplicationRecord
  belongs_to :user
  has_many :orders
end
