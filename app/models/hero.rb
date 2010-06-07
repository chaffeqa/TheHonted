class Hero < ActiveRecord::Base
  scope :ordered, order("name")
end
