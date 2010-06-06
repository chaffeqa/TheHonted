class StrategyGuide < ActiveRecord::Base
  belongs_to :hero
  belongs_to :user
  has_one :skill_build
  has_many :hero_pros
  has_many :hero_cons
  has_many :strategy_items

end
