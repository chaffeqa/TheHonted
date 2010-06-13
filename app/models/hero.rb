class Hero < ActiveRecord::Base
  has_one :skill_1, :class_name => "Skill"
  has_one :skill_2, :class_name => "Skill"
  has_one :skill_3, :class_name => "Skill"
  has_one :skill_4, :class_name => "Skill"
  scope :ordered, order("name")
end
