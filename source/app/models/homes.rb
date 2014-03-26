class Home < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :cat
  belongs_to :user
end
