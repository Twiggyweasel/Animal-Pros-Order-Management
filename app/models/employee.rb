class Employee < ApplicationRecord

  validates :first_name, :last_name, :region, :position, :phone, :hire_date, presence: true

  scope :active, -> { where(is_active: true) }
  scope :inactive, -> { where(is_active: false) }

  def fullname
    self.first_name + " " + self.last_name
  end
end
