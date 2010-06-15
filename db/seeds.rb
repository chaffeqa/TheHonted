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
swiftblade.create_skill_1( {
    :name => 'Blade Frenzy',
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
  })
swiftblade.create_skill_2({
  :name => 'Counter Attack',
  :description => 'Extensive training in melee combat has allowed Swiftblade to perfect the art of countering enemy attacks, granting a chance that he will retaliate every time an enemy hero attacks him.',
  :image_path => 'images/skills/counter_attack.jpg'
})
swiftblade.create_skill_3({
  :name => 'Way of the Sword',
  :description => 'Swiftblades unsurpassed skill at the sword has made him a master of hitting where it hurts, giving him a chance to critically strike opponents with each attack.',
  :image_path => 'images/skills/way_of_the_sword.jpg'
})
swiftblade.create_skill_4({
  :name => 'Swift Slashes',
  :description => 'Swiftblade attacks random nearby targets with such speed that he appears to teleport to them. Targets are randomly chosen, yet it is possible to teleport to the same target multiple times.',
  :image_path => 'images/skills/swift_slashes.jpg'
})
swiftblade.save


nighthound = Hero.create( {
    :name => 'Nighthound',
    :description => 'Scurrilous rumors of unnatural parentage have haunted this proud, leonine warrior his entire life. He long served in the Beast Horde as a shadowy scout and assassin before taking on a comparable role in the new Legion. Wherever he came from, Night Hound is a welcome ally and a deadly foe.',
    :image_path => 'images/heroes/nighthound'
  })
nighthound.create_skill_1({
  :name => 'Smoke Bomb',
  :description => 'Night Hound throws a smoke bomb at target location. Enemies standing within the smoke are silenced and will have a higher chance to miss with their attacks. Enemies within the cloud also have reduced movement and attack speed and creeps ignore the Night Hound.',
  :image_path => 'images/skills/smoke_bomb.jpg'
})
nighthound.create_skill_2({
  :name => 'Pounce',
  :description => 'Taking full advantage of the element of surprise, Night Hound teleports to a target unit. If target unit is an enemy, Night Hound will strike them when he teleports, dealing additional damage.',
  :image_path => 'images/skills/pounce.jpg'
})
nighthound.create_skill_3({
  :name => 'Backstab',
  :description => 'Night Hound is a master at exploiting openings in combat. When he attacks a target from behind, he does extra damage equal to {25,50,75,100}% of his agility.',
  :image_path => 'images/skills/backstab.jpg'
})
nighthound.create_skill_4({
  :name => 'Invisibility',
  :description => 'Night Hound learns to better conceal himself, making him invisible to the naked eye when not attacking.',
  :image_path => 'images/skills/invisibility.jpg'
})
nighthound.save