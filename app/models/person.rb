class Person < ActiveRecord::Base
  has_many :phone_numbers, as: :callable, dependent: :destroy
end
