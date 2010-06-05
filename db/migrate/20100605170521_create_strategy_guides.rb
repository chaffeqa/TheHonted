class CreateStrategyGuides < ActiveRecord::Migration
  def self.up
    create_table :strategy_guides do |t|
      t.belongs_to :hero
      t.belongs_to :user
      t.text :about_this_guide

      t.timestamps
    end
  end

  def self.down
    drop_table :strategy_guides
  end
end
