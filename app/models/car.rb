class Car < ApplicationRecord
  has_and_belongs_to_many :dealerships

  enum state: [ :new, :used ], _suffix: true
end
