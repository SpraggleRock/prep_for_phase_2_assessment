class Cat < ActiveRecord::Base
  # Remember to create a migration!
  has_many :homes
  has_many :staff through :homes, source "users"
end
