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

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
