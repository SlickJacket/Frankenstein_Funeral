class User < ActiveRecord::Base

has_many :skeletons
has_many :bodyparts, through: :skeletons 


end
