class User < ActiveRecord::Base

has_many :skeletons
has_many :parts, through: :skeletons 


end
