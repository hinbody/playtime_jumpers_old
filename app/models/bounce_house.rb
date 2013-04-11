# == Schema Information
#
# Table name: bounce_houses
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  description      :text
#  five_hour_rental :string(255)
#  all_day_rental   :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#

class BounceHouse < ActiveRecord::Base
end
