class StrategyItem < ActiveRecord::Base
  belongs_to :strategy_guide
  belongs_to :content, :polymorphic => true
end
