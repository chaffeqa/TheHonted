class Hero < ActiveRecord::Base
  belongs_to :skill_1, :class_name => "Skill", :foreign_key => "skill_1_id"
  belongs_to :skill_2, :class_name => "Skill", :foreign_key => "skill_2_id"
  belongs_to :skill_3, :class_name => "Skill", :foreign_key => "skill_3_id"
  belongs_to :skill_4, :class_name => "Skill", :foreign_key => "skill_4_id"
  scope :ordered, order("name")
end
