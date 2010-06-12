class StrategyGuide < ActiveRecord::Base
  belongs_to :hero
  belongs_to :user
  has_one :skill_build, :dependent => :destroy
  has_many :hero_pros, :dependent => :destroy
  has_many :hero_cons, :dependent => :destroy
  has_many :strategy_items
  accepts_nested_attributes_for :hero_pros, :allow_destroy => true, :reject_if => :all_blank
  accepts_nested_attributes_for :hero_cons, :allow_destroy => true, :reject_if => :all_blank

end
