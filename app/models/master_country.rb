# == Schema Information
#
# Table name: master_countries
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  un_member   :boolean
#  al_member   :boolean
#  oas_member  :boolean
#  au_member   :boolean
#  eu_member   :boolean
#  nato_member :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class MasterCountry < ActiveRecord::Base

	belongs_to :country_assignment

end
