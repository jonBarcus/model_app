class CreateCountryAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :country_assignments do |t|
    	t.integer :team_id
    	t.integer :country_id

    	t.timestamps
    end
  end
end
