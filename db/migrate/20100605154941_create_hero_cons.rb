class CreateHeroCons < ActiveRecord::Migration
  def self.up
    create_table :hero_cons do |t|
      t.belongs_to :strategy_guide
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :hero_cons
  end
end
