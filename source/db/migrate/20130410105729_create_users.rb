class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :password_confirmation
      # t.string :oauth_token
      # t.string :oauth_secret

      t.timestamps
    end
  end
end
