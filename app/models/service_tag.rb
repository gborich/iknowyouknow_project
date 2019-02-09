# == Schema Information
#
# Table name: service_tags
#
#  id            :integer          not null, primary key
#  service_id    :integer
#  tag_id        :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  tag_id_id     :integer
#  service_id_id :integer
#

class ServiceTag < ApplicationRecord
  belongs_to :tag
  belongs_to :service
end
