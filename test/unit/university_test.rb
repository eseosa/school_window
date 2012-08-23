# == Schema Information
#
# Table name: universities
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  location   :string(255)
#  details    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class UniversityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
