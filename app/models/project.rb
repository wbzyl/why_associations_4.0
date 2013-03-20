class Project < ActiveRecord::Base
  has_many :assignments
  has_many :programmers, through: :assignments
end
