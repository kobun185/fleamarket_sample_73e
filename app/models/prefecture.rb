class Prefecture < ActiveHash::Base
  include ActiveHash::Associations
  has_many :addresses
end