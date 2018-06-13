class CreateClubRosters < ActiveRecord::Migration[5.2]
  def change
    create_table :club_rosters do |t|
      t.integer :user_id
      t.integer :club_id

      t.timestamps
    end
  end
end
