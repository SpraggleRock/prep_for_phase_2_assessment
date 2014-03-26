class CreateHomes < ActiveRecord::Migration
  def change
  	create_table :homes do |t|
 			t.integer :cat_id
 			t.integer :user_id
 			t.string :address
  	end
  end
end
