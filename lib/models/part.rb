class Part < ActiveRecord::Base
has_many :skeletons 
has_many :users, through: :skeletons

end