# == Schema Information
#
# Table name: countries
#
#  id         :integer          not null, primary key
#  country    :string
#  city       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id_id :integer
#

require 'test_helper'

class CountryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
