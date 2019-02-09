# == Schema Information
#
# Table name: subjects
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Subject < ApplicationRecord
  validates_presence_of :name
  has_many :services
  belongs_to :category_subject
end
