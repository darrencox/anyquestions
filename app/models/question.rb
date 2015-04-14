# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  content    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Question < ActiveRecord::Base

  belongs_to :event
  
end
