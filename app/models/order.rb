# == Schema Information
#
# Table name: orders
#
#  id            :integer          not null, primary key
#  status        :string
#  comment       :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  student_id_id :integer
#  service_id_id :integer
#

class Order < ApplicationRecord
  belongs_to :student
  belongs_to :service
end
