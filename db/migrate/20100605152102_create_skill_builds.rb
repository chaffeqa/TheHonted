class CreateSkillBuilds < ActiveRecord::Migration
  def self.up
    create_table :skill_builds do |t|
      t.string :skill_1
      t.string :skill_2
      t.string :skill_3
      t.string :skill_4
      t.string :skill_5
      t.string :skill_6
      t.string :skill_7
      t.string :skill_8
      t.string :skill_9
      t.string :skill_10
      t.string :skill_11
      t.string :skill_12
      t.string :skill_13
      t.string :skill_14
      t.string :skill_15
      t.string :skill_16
      t.string :skill_17
      t.string :skill_18
      t.string :skill_19
      t.string :skill_20
      t.string :skill_21
      t.string :skill_22
      t.string :skill_23
      t.string :skill_24
      t.string :skill_25
      t.text :reasoning
      t.belongs_to :strategy_guide

      t.timestamps
    end
  end

  def self.down
    drop_table :skill_builds
  end
end
