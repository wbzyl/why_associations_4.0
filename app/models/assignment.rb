class Assignment < ActiveRecord::Base
  belongs_to :programmer
  belongs_to :project
end
