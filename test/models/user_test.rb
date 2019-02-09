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

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
