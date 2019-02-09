# == Schema Information
#
# Table name: services
#
#  id            :integer          not null, primary key
#  name          :string
#  price         :integer
#  description   :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  teacher_id_id :integer
#  subject_id_id :integer
#

class Service < ApplicationRecord
  belongs_to :teacher
  belongs_to :subject
  belongs_to :service_tag
  has_many :orders
end
