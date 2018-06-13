# == Schema Information
#
# Table name: clubs
#
#  id         :bigint(8)        not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Club < ApplicationRecord
	belongs_to :user

	has_many :users, through :club_rosters
end
