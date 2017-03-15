class Group < ApplicationRecord
  has_many :users
  has_many :pets
  has_many :devices
end
