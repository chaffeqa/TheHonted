class CreateStrategyItems < ActiveRecord::Migration
  def self.up
    create_table :strategy_items do |t|
      t.belongs_to :strategy_guide
      t.integer :phase
      t.integer :order
      t.references :content, :polymorphic => true

      t.timestamps
    end
  end

  def self.down
    drop_table :strategy_items
  end
end
