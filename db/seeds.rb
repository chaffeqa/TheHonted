# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

# Heroes
swiftblade = Hero.create(
  {:name => 'Swiftblade',
    :description => 'The unique armor worn by this mysterious warrior is said to have been uncovered in the ruins of an ancient city. Whether the armor imbues the famed speed and pinpoint accuracy possessed by the warrior called Swiftblade, or whether he would be equally mighty without it, none can say.',
    :image_path => 'images/heroes/swiftblade',
    :skill_1 => 'Blade Frenzy',
    :skill_2 => 'Counter Attack',
    :skill_3 => 'Way of the Sword',
    :skill_4 => 'Swift Slashes',
    :attack_range => '125',
    :damage_range => '44-48',
    :attacks_per_second => '0.71',
    :movement_speed => '300',
    :str_base => '20',
    :agi_base => '20',
    :int_base => '14',
    :str_gain => '1.9',
    :agi_gain => '2.85',
    :int_gain => '1.4',
    :armor => '3.9' }
)

swiftblade.create_skill_1(
  :name => 'Blade_Frenzy',
  :description => 'Swiftblade works himself into a Blade Frenzy. While in this state, he gains Magic Immunity and deals high damage per second to any nearby enemy units. Swiftblade is free to move around even while this skill is active.',
  :image_path => 'images/skills/blade_frenzy.jpg',
  :action => 'Target Self',
  :target => 'Enemy Units',
  :damage_type => 'Magic',
  :radius => '250',
  :mana_cost => '110',
  :cooldown => '30/28/26/24 seconds',
  :activation => 'Deals 80 / 100 / 120 / 140 Magic damage per second to targets units in radius. Applies Blade Frenzy to self for duration of activation. Lasts 5 seconds.\n
Swiftblade is not disarmed with level 4 of this ability but his attackspeed is lowered by 50%.\n
Dispels all debuffs and buffs on use.',
  :effects => 'Magic Immunity\n
  Dispels all debuffs and buffs\n
  -50% attack speed'
)
