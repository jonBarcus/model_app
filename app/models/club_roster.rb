class ClubRoster < ApplicationRecord

	belongs_to :club

	has_many :users

end