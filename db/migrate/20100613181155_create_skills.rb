class CreateSkills < ActiveRecord::Migration
  def self.up
    create_table :skills do |t|
      t.string :name
      t.text :description
      t.string :image_path
      t.string :action
      t.string :target
      t.string :damage_type
      t.string :range
      t.string :radius
      t.string :cast_time
      t.string :mana_cost
      t.string :cooldown
      t.text :activation
      t.text :on_attack
      t.text :effects
      t.string :staff_effect

      t.timestamps
    end
  end

  def self.down
    drop_table :skills
  end
end
