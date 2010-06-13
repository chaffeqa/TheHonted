class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :image_path
      t.string :str
      t.string :agi
      t.string :int
      t.string :armor
      t.string :max_mana
      t.string :max_health
      t.string :mana_regen
      t.string :damage
      t.string :attack_speed
      t.string :movement_speed
      t.string :magic_armor
      t.string :lifesteal
      t.string :block
      t.string :evasion
      t.string :critical_strike
      t.string :on_attack
      t.text :on_attack_effect
      t.string :aura_name
      t.integer :aura_radius
      t.string :aura_type
      t.text :aura_effects
      t.text :activation_description
      t.string :activation_target
      t.string :activation_range
      t.string :activation_mana_cost
      t.string :activation_cooldown
      t.text :activation_effects
      t.integer :value

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
