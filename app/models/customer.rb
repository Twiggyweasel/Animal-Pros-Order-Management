class Customer < ApplicationRecord

    validates :first_name, :last_name, :address1, :city, :state, :zip, presence: true

    def fullname
       self.first_name + " " + self.last_name
    end
end
