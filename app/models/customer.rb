class Customer < ActiveRecord::Base

  has_many :orders, dependent: :destroy

end
