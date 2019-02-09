# == Schema Information
#
# Table name: category_subjects
#
#  id             :integer          not null, primary key
#  subject_id     :integer
#  category_id    :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  subject_id_id  :integer
#  category_id_id :integer
#

class CategorySubject < ApplicationRecord
  belongs_to :subject
  belongs_to :category
end
