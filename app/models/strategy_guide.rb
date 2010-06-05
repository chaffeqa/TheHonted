class StrategyGuide < ActiveRecord::Base
  belongs_to :hero, :user
  has_one :skill_build
  has_many :hero_pros, :hero_cons, :strategy_items

end
