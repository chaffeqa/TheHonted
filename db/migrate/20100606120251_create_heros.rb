class CreateHeros < ActiveRecord::Migration
  def self.up
    create_table :heros do |t|
      t.string :name
      t.text :description
      t.string :image_path
      t.belongs_to :skill_1
      t.belongs_to :skill_2
      t.belongs_to :skill_3
      t.belongs_to :skill_4
      t.integer :attack_range
      t.string :damage_range
      t.decimal :attacks_per_second
      t.integer :movement_speed
      t.decimal :str_base
      t.decimal :agi_base
      t.decimal :int_base
      t.decimal :str_gain
      t.decimal :agi_gain
      t.decimal :int_gain
      t.decimal :armor

      t.timestamps
    end
  end

  def self.down
    drop_table :heros
  end
end
