# == Schema Information
#
# Table name: teachers
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  rating      :string
#  awards      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id_id  :integer
#

class Teacher < ApplicationRecord
  belongs_to :user
  has_many :services
end
