class CreateMasterCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :master_countries do |t|
    	t.string :name
    	t.boolean :un_member
    	t.boolean :al_member
    	t.boolean :oas_member
    	t.boolean :au_member
    	t.boolean :eu_member
    	t.boolean :nato_member
    	
    	t.timestamps
    end
  end
end
