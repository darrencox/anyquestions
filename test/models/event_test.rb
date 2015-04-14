# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  name       :string
#  date       :date
#  summary    :text
#  location   :string
#  lat        :float
#  long       :float
#  starts     :datetime
#  ends       :datetime
#  cover_img  :string
#  subtitle   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
