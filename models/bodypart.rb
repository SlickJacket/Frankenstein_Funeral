class BodyPart < ActiveRecord::Base
has_many :skeletons 
has many :users through: :skeletons

end