class Repairer < ApplicationRecord
    validates_presence_of :first_name
    validates_presence_of :last_name
    validates_presence_of :bio
    validates_presence_of :phone
    validates_presence_of :address
    validates_presence_of :city
    validates_presence_of :mail
    validates_uniqueness_of :mail
end
