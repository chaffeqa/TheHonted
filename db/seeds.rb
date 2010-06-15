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


moon_queen = Hero.create( {
    :name => 'Moon Queen',
    :description => '
The insectoid Moon Warriors never entered into the great war between Man and Beast, but when the Hellbourne threatened Newerth, their very queen emerged to lead her people against the daemons. With powers drawn from the moon and from the shared will of her hive, this strange creature is a mighty boon for the Legion.',
    :image_path => 'images/heroes/moon_queen.jpg'
  })
moon_queen.create_skill_1({
  :name => 'Moon Beam',
  :description => 'The Moon Queen calls upon the power of the moon to strike a target foe, damaging and briefly stunning them.',
  :image_path => 'images/skills/moon_beam.jpg'
})
moon_queen.create_skill_2({
  :name => 'Multi-Strike',
  :description => 'The Moon Queens skill with her Luna Shuriken allows her to bounce it from her primary target to hit additional foes.',
  :image_path => 'images/skills/multi-strike.jpg'
})
moon_queen.create_skill_3({
  :name => 'Lunar Glow',
  :description => 'The Moon Queen radiates the power of the moon to allies around her, increasing the damage they deal with ranged attacks.',
  :image_path => 'images/skills/lunar_glow.jpg'
})
moon_queen.create_skill_4({
  :name => 'Moon Finale',
  :description => 'The Moon Queen casts her Moon Beam spell repeatedly for a short duration on random nearby enemies.',
  :image_path => 'images/skills/moon_finale.jpg'
})
moon_queen.save


wildsoul = Hero.create( {
    :name => 'Wildsoul',
    :description => '
Is the mighty Wildsoul a Beast who dreamed himself a Man, or a Man who dreamed himself a Beast? As much a bear as a human, this druidic warrior draws upon primordial woodland energies to strengthen himself and crush those who threaten the natural life of Newerth.',
    :image_path => 'images/heroes/wildsoul.jpg'
  })
wildsoul.create_skill_1({
  :name => 'Beardulon',
  :description => 'Wildsoul summons his pet bear, Beardulon',
  :image_path => 'images/skills/beardulon.jpg'
})
wildsoul.create_skill_2({
  :name => 'Wild',
  :description => 'Wildsoul drives both himself and Beardulon Wild, increasing attack speed and movement speed.',
  :image_path => 'images/skills/wild.jpg'
})
wildsoul.create_skill_3({
  :name => 'Natural Attunement',
  :description => 'Wildsoul attunes himself further to the needs of Nature, adding to the power of his other abilities.',
  :image_path => 'images/skills/natural_attunement.jpg'
})
wildsoul.create_skill_4({
  :name => 'Bear Form',
  :description => 'Wildsoul takes the form of a bear causing him to switch to melee based attacks, have a faster attack time, gain more armor and health, yet moves slower.',
  :image_path => 'images/skills/bear_form.jpg'
})
wildsoul.save



zephyr = Hero.create( {
    :name => 'Zephyr',
    :description => 'A riddler, a sage, and a lover of sweets, Zephyr sadly is known in these times simply as a warrior of the winds. Though he chose not to participate in the Beast Hordes war with the humans, he has joined battle against the Hellbourne, and the powerful winds and aerial attacks he calls down upon the daemons are a welcome addition to the new Legion.',
    :image_path => 'images/heroes/zephyr.jpg'
  })
zephyr.create_skill_1({
  :name => 'Gust',
  :description => 'Zephyr summons a gust of wind in the direction of his choosing, pushing, stunning, and dealing damage to enemies it hits.',
  :image_path => 'images/skills/gust.jpg'
})
zephyr.create_skill_2({
  :name => 'Cyclones',
  :description => 'Zephyr spawns a small cyclone on every kill he makes. Spawned cyclones automatically patrol around Zephyr and damage enemies they touch. Zephyr can, on command, consume a cyclone to heal himself.',
  :image_path => 'images/skills/cyclones.jpg'
})
zephyr.create_skill_3({
  :name => 'Wind Shield',
  :description => 'Zephyr uses his control of the wind to create a protective barrier around himself, increasing his evasion and speeding him up. The barrier also has a chance to redirect incoming projectile based attacks back at the attacker.',
  :image_path => 'images/skills/wind_shield.jpg'
})
zephyr.create_skill_4({
  :name => 'Typhoon',
  :description => 'Zephyr creates a mighty Typhoon, slowing movement speed and dealing damage to any units near it. The closer an enemy is to the center of the Typhoon, the higher the damage and speed reduction becomes.',
  :image_path => 'images/skills/typhoon.jpg'
})
zephyr.save


zephyr = Hero.create( {
    :name => 'Zephyr',
    :description => '',
    :image_path => 'images/heroes/.jpg'
  })
zephyr.create_skill_1({
  :name => '',
  :description => '',
  :image_path => 'images/skills/.jpg'
})
zephyr.create_skill_2({
  :name => '',
  :description => '',
  :image_path => 'images/skills/.jpg'
})
zephyr.create_skill_3({
  :name => '',
  :description => '',
  :image_path => 'images/skills/.jpg'
})
zephyr.create_skill_4({
  :name => '',
  :description => '',
  :image_path => 'images/skills/.jpg'
})
zephyr.save