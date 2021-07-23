class User < ApplicationRecord
  validates :name, :address, presence: true
  validates :name, uniqueness: true
before_validation :remove_spaces
private
def remove_spaces
  self.name=self.name.strip
  self.address=self.address.strip
end
end
