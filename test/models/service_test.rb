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

require 'test_helper'

class ServiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
