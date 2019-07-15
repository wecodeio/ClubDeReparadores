class CreatesRepairers < ActiveRecord::Migration[5.2]
  def change
  	create_table :repairers do |t|
  		t.string :first_name
  		t.string :last_name
  		t.string :address
  		t.string :city
  		t.string :cellphone
  		t.string :phone
  		t.string :mail
  		t.text :bio
  		t.timestamps
  	end
  end
end
