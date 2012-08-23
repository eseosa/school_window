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

class University < ActiveRecord::Base
  attr_accessible :details, :location, :name
end
