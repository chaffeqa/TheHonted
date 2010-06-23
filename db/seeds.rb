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
    :primary_attr => 'Agility',
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
    :image_path => 'images/heroes/nighthound',
    :primary_attr => 'Agility'
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
    :image_path => 'images/heroes/moon_queen.jpg',
    :primary_attr => 'Agility'
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
    :image_path => 'images/heroes/wildsoul.jpg',
    :primary_attr => 'Agility'
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
    :image_path => 'images/heroes/zephyr.jpg',
    :primary_attr => 'Agility'
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



magebane = Hero.create( {
    :name => 'Magebane',
    :description => 'A keeper of lost lore and a priest to forgotten gods, Magebane invokes unholy rituals to drain the energy of his enemies and turn it back against them. In less desperate times, heretics such as Magebane would have been burned at the stake, but this is not the first unexpected clemency brought about by the war against the Hellbourne.',
    :image_path => 'images/heroes/magebane.jpg',
    :primary_attr => 'Agility'
  })
magebane.create_skill_1({
  :name => 'Mana Combustion',
  :description => 'On each attack, Magebane drains some of the targets Mana. The drained Mana combusts, dealing additional damage back to the target.',
  :image_path => 'images/skills/mana_combustion.jpg'
})
magebane.create_skill_2({
  :name => 'Flash',
  :description => 'In a flash of light, Magebane is able to teleport a short distance to a target location and buffs his allies resistance to magic in the process.',
  :image_path => 'images/skills/flash.jpg'
})
magebane.create_skill_3({
  :name => 'Master of the Mantra',
  :description => 'Magebane proves he is the master of the flow of Magic around him, limiting the speed enemies can control it while damaging them if they cast.',
  :image_path => 'images/skills/master_of_the_mantra.jpg'
})
magebane.create_skill_4({
  :name => 'Mana Rift',
  :description => 'Magebane tears a rift in a target units mind, stunning it briefly. He then detonates the rift, dealing damage in an area around the target based on how much Mana the target has missing. The more Mana the target is missing, the higher the damage dealt.',
  :image_path => 'images/skills/mana_rift.jpg'
})
magebane.save



scout = Hero.create( {
    :name => 'Scout',
    :description => '
Trained since youth to be swift, silent, and deadly, Scouts spend much of their lives deep in the wild, apart from their brethren. After the alliance with the Beast Horde, they learned yet more ways of the wild, and turned all their craft to defeating the Hellbourne. Though many view them as aloof, none doubt the importance of Scouts in the war against the daemons, as the countless enemy corpses, dead by a single blow, attest.',
    :image_path => 'images/heroes/scout.jpg',
    :primary_attr => 'Agility'
  })
scout.create_skill_1({
  :name => 'Vanish',
  :description => 'The Scout slips into stealth mode for a brief time. Using the advantage of surprise, he is able to unleash a devastating flurry of attacks when attacking from stealth.',
  :image_path => 'images/skills/vanish.jpg'
})
scout.create_skill_2({
  :name => 'Electric Eye',
  :description => 'The Scout places an Electric Eye which provides sight in an area around the eye. Electric Eyes may be detonated to silence nearby enemies.',
  :image_path => 'images/skills/electric_eye.jpg'
})
scout.create_skill_3({
  :name => 'Disarm',
  :description => 'The Scouts mastery of close range combat allows him to occasionally disarm an opponent, then take advantage of the opening with a devastating attack.',
  :image_path => 'images/skills/disarm.jpg'
})
scout.create_skill_4({
  :name => 'Marksman Shot',
  :description => 'The Scout uses his crossbow to perform a devastating ranged attack on a single unit, damaging and slowing it.',
  :image_path => 'images/skills/marksman_shot.jpg'
})
scout.save




andromeda = Hero.create( {
    :name => 'Andromeda',
    :description => 'The star-born celestial known as Andromeda is a stranger to Newerth. With no memory of her home or her people, she is driven merely by an innate sense that the Hellbourne are vile and the mortal inhabitants of Newerth innocent. Her powerful dimensional magic allows her to bring destruction to the daemons or strength to her new-found allies.',
    :image_path => 'images/heroes/andromeda.jpg',
    :primary_attr => 'Agility'
  })
andromeda.create_skill_1({
  :name => 'Comet',
  :description => 'Andromeda rips a Comet from her dimension to hurl at an enemy, damaging and stunning them.',
  :image_path => 'images/skills/comet.jpg'
})
andromeda.create_skill_2({
  :name => 'Aurora',
  :description => 'Andromeda shakes the magnetic field of Newerth, causing an Aurora to erupt, damage, and reduce the armor of all enemies in front of her.',
  :image_path => 'images/skills/aurora.jpg'
})
andromeda.create_skill_3({
  :name => 'Dimensional Link',
  :description => 'Andromedas link to her home dimension bestows power to nearby allies, allowing them to do more damage with attacks.',
  :image_path => 'images/skills/dimensional_link.jpg'
})
andromeda.create_skill_4({
  :name => 'Void Rip',
  :description => 'Andromeda pauses time and space, instantly switching places with another hero.  ',
  :image_path => 'images/skills/void_rip.jpg'
})
andromeda.save



valkyrie = Hero.create( {
    :name => 'Valkyrie',
    :description => 'The ancient sagas of the heathen north have long told to the tale of the battle-women known as Valkyries. For centuries, their ranks have thinned as the old ways have died out and civilization stretched its smothering hand over the frozen wilds. But some Valkyries still remain, cold and swift as the north wind, wielding their lances with expertise to rival the most veteran Legion warriors.',
    :image_path => 'images/heroes/valkyrie.jpg',
    :primary_attr => 'Agility'
  })
valkyrie.create_skill_1({
  :name => 'Call of the Valkyrie',
  :description => 'Valkyrie calls forth several Battle Maidens to damage nearby enemies.',
  :image_path => 'images/skills/valkyrie.jpg'
})
valkyrie.create_skill_2({
  :name => 'Javelin of Light',
  :description => 'Valkyrie hurls a Javelin of Light toward a target location. The first enemy hit will be damaged and stunned. Stun duration depends on the distance the Javelin has traveled.',
  :image_path => 'images/skills/javelin_of_light.jpg'
})
valkyrie.create_skill_3({
  :name => 'Courageous Leap',
  :description => 'Valkyrie leaps forward, charging to battle. Her courage inspires nearby allied heroes when she lands, granting increased movement and attack speed.',
  :image_path => 'images/skills/courageous_leap.jpg'
})
valkyrie.create_skill_4({
  :name => 'Valkyries Prism',
  :description => 'Valkyrie bends light itself, shrouding all allied heroes on the map in stealth',
  :image_path => 'images/skills/valkyries_prism.jpg'
})
valkyrie.save


engineer = Hero.create( {
    :name => 'Engineer',
    :description => '
The Engineer is a man driven by more than mere eccentricity. Once a humble, hard-drinking builder in the Legion, he came to be a master all manner of machines. Wielding a blunderbuss of his own design and hoisting ale and a veritable armory on his back, he is a strange but impressive sight on the battlefield.',
    :image_path => 'images/heroes/engineer.jpg',
    :primary_attr => 'Agility'
  })
engineer.create_skill_1({
  :name => 'The Keg',
  :description => 'Never going into battle without a full keg of Ale, the Engineer also knows that it can be used as a powerful explosive in a pinch. When heaved into a battle, it stuns and damages enemies where it lands. He drinks this stuff.',
  :image_path => 'images/skills/the_keg.jpg'
})
engineer.create_skill_2({
  :name => 'Steam Turret',
  :description => 'The Steam Turret, built piece by piece, is bonded to the Engineer himself. He is able to control it from anywhere and it gains any items the Engineer has when its created, yet dies if he does.',
  :image_path => 'images/skills/steam_turret.jpg'
})
engineer.create_skill_3({
  :name => 'Tinker',
  :description => 'The Engineer can easily manipulate the inner workings of any Mechanical unit or Tower, Tinkering with them to either increase or decrease their function for a short time.',
  :image_path => 'images/skills/tinker.jpg'
})
engineer.create_skill_4({
  :name => 'Energy Field',
  :description => 'Deploying his patented Energy Field Double-Magnetic Modulator v3.0, the Engineer can guarantee that any enemies who enter or exit the active field are purged of all buffs and then silenced and perplexed for a short time.',
  :image_path => 'images/skills/energy_field.jpg'
})
engineer.save


chronos = Hero.create( {
    :primary_attr => 'Agility',
    :name => 'Chronos',
    :description => 'The greatest inventors of the Human Legion dreamed of making an army of machine warriors to spare humans the bloody cost of war. Only one was ever created, for no one could ever find a way to quicken him. When the Hellbourne fed a stolen soul into its mechanical shell, they brought the Chronos to life and gained the benefit of this artificial monsters mastery over time itself.',
    :image_path => 'images/heroes/chronos.jpg'
  })
chronos.create_skill_1({
  :name => 'Time Leap',
  :description => 'Chronos teleports himself through space and time to a target location. Any nearby enemies are slowed and damaged.',
  :image_path => 'images/skills/time_leap.jpg'
})
chronos.create_skill_2({
  :name => 'Rewind',
  :description => 'Chronos steps back through time when damaged, giving him a chance to undo damage taken quickly.',
  :image_path => 'images/skills/rewind.jpg'
})
chronos.create_skill_3({
  :name => 'Curse of Ages',
  :description => 'Chronos can steal time from any enemy hero he hits, stealing agility and eventually locking them in time for a brief moment.',
  :image_path => 'images/skills/curse_of_ages.jpg'
})
chronos.create_skill_4({
  :name => 'Chronofield',
  :description => 'Chronos creates a field of energy that exists outside of time. Enemy units caught inside the field are frozen while ally units caught inside the field are slowed to nearly a stop. Chronos is immune to the rifts effects.',
  :image_path => 'images/skills/chronofield.jpg'
})
chronos.save




slither = Hero.create( {
    :name => 'Slither',
    :description => 'The Serpent of the Seventh Pit, feeder on the sick and the weak, was summoned forth in the last days of the war between Man and Beast. A cunning conniver and whisperer of false promises, Slither delights in suffering and despair.',
    :image_path => 'images/heroes/slither.jpg',
    :primary_attr => 'Agility'
  })
slither.create_skill_1({
  :name => 'Poison Spray',
  :description => 'Slither sprays a torrent of toxins toward a target location, infecting any enemies that come in contact with the torrent. Infected enemies take some initial damage followed by damage over time and reduced movement speed.',
  :image_path => 'images/skills/poison_spray.jpg'
})
slither.create_skill_2({
  :name => 'Toxicity',
  :description => 'Slither adds poison damage to his attacks. His attacks then reduce his targets movement speed, deal damage over time, and negate regeneration.',
  :image_path => 'images/skills/toxicity.jpg'
})
slither.create_skill_3({
  :name => 'Toxin Ward',
  :description => 'Slither summons a ward at target location that will attack nearby enemies, dealing minor damage and slowing their movement speed. The ward is immune to Magic.',
  :image_path => 'images/skills/toxin_ward.jpg'
})
slither.create_skill_4({
  :name => 'Poison Burst',
  :description => 'Slither expels poison in all directions. Enemies hit by the ring of poison become infected, taking damage over time. The infection is non-lethal, and as such, it will not drain a targets Health below 1 Health.',
  :image_path => 'images/skills/poison_burst.jpg'
})
slither.save


blood_hunter = Hero.create( {
    :name => 'Blood Hunter',
    :description => 'Although the Hunters were members of the Beast Horde in its war against the humans, they always preferred the darkness to the light, and were won over to the Hellbourne with the promise of human blood. They are led by the traitor Blood Hunter, a swift and deadly warrior who feeds on the blood of his enemies and heals with horrifying speed.',
    :image_path => 'images/heroes/blood_hunter.jpg',
    :primary_attr => 'Agility'
  })
blood_hunter.create_skill_1({
  :name => 'Blood Crazy',
  :description => 'The Blood Hunter instills a craze for blood in a target unit, causing it to have increased base damage. While in this state, the target unit will take some damage over time and be unable to cast any spells.',
  :image_path => 'images/skills/blood_crazy.jpg'
})
blood_hunter.create_skill_2({
  :name => 'Feast',
  :description => 'The Blood Hunter feasts on the flesh of every kill he makes, healing him based on the victims maximum Health.',
  :image_path => 'images/skills/feast.jpg'
})
blood_hunter.create_skill_3({
  :name => 'Blood Sense',
  :description => 'When a nearby enemy is below 40% Health, the Blood Hunter can smell it. Grants vision of the enemy unit and increases the Blood Hunters movement speed.',
  :image_path => 'images/skills/blood_sense.jpg'
})
blood_hunter.create_skill_4({
  :name => 'Hemorrhage',
  :description => 'The Blood Hunter shoots out a sharp spike from his body at an enemys major artery, dealing initial damage followed by additional damage whenever they move.',
  :image_path => 'images/skills/hemorrhage.jpg'
})
blood_hunter.save


soulstealer = Hero.create( {
    :name => 'Soulstealer',
    :description => '
The priests tell young men bound for the battlefield that if they fall, Elysian fields and peace awaits them. But this is not strictly true, not as long as the Soulstealer walks the battlefield. Gathering the spirits of those he kills in a bloody, shadowy sack, he augments his own power with their suffering. Those who see him quake in terror to know that death, for them, will be no release, but only a fiery captivity and oblivion.',
    :image_path => 'images/heroes/soulstealer.jpg',
    :primary_attr => 'Agility'
  })
soulstealer.create_skill_1({
  :name => 'demon_hand',
  :description => 'Soulstealer calls upon the greater Hellbourne daemons to lay waste to the enemies before him.',
  :image_path => 'images/skills/demon_hand.jpg'
})
soulstealer.create_skill_2({
  :name => 'Soulsteal',
  :description => 'Soulstealer steals the souls of all he vanquishes, increasing his damage as his collection grows.',
  :image_path => 'images/skills/soulsteal.jpg'
})
soulstealer.create_skill_3({
  :name => 'Dread',
  :description => 'Soulstealers appearance instills pure fear. Weakening the enemies morale, his mere presence lowers their armor.',
  :image_path => 'images/skills/dread.jpg'
})
soulstealer.create_skill_4({
  :name => 'Soul Burst',
  :description => 'Soulstealer releases torrents of negative energy based on the number of souls he has collected. Each torrent damages nearby enemies. The closer an enemy is, the more torrents hell get hit by.',
  :image_path => 'images/skills/soul_burst.jpg'
})
soulstealer.save



the_dark_lady = Hero.create( {
    :name => 'The Dark Lady',
    :description => 'Wielding twin, scythe-like blades, the she-reaper known as the Dark Lady has moved through the Legions ranks like a shadow of death. For soldiers seeking to buck up their courage, she is a punch-line: "Careful you dont find the Dark Lady", they joke to their carousing friend. But even these jokes are accompanied by a shudder. Swift and cold and lethal as the frozen winds off the steps, black as the cloud-choked night, she is no laughing matter.',
    :image_path => 'images/heroes/the_dark_lady.jpg',
    :primary_attr => 'Agility'
  })
the_dark_lady.create_skill_1({
  :name => 'Dark Blades',
  :description => 'The Dark Lady activates the malicious energy in her Wrath Blades, causing her attacks to silence foes, preventing them from using spells and abilities. The malicious energy in her blades also increase her base damage temporarily.',
  :image_path => 'images/skills/dark_blades.jpg'
})
the_dark_lady.create_skill_2({
  :name => 'Taint Soul',
  :description => 'The Dark Lady forces her influence onto an enemy units soul, tainting it. The target enemy is weakened, taking damage and reduced movement speed for a brief duration.',
  :image_path => 'images/skills/taint_soul.jpg'
})
the_dark_lady.create_skill_3({
  :name => 'Charging Strikes',
  :description => 'The Dark Lady launches herself toward a target location at incredible speed, attacking enemies as she passes by them.',
  :image_path => 'images/skills/charging_strikes.jpg'
})
the_dark_lady.create_skill_4({
  :name => 'Cover of Darkness',
  :description => 'Using the depths of her Dark Powers, The Dark Lady poisons the minds of all enemy heroes in an area. For the duration, affected enemy heroes move slightly slower, lose all allied vision and have a reduced sight range.',
  :image_path => 'images/skills/cover_of_darkness.jpg'
})
the_dark_lady.save


the_madman = Hero.create( {
    :name => 'The Madman',
    :description => 'No one knows for certain the identity of this masked and demented murderer. Some say he was confined for eons in the deepest pit of Hell, a villain so black at heart that even the Hellbourne treated him as a pariah, yet so deadly that they were forced to call upon him in their war with the Legion. Others say he is a man, just a man, but driven mad by the endless carnage he has witnessed.',
    :image_path => 'images/heroes/the_madman.jpg',
    :primary_attr => 'Agility'
  })
the_madman.create_skill_1({
  :name => 'Stalk',
  :description => 'The Madman conceals himself for a short time, granting him invisibility and increased movement speed. After the invisibility fades, he is slowed. In his wild craze, the madman lashes out and damages any enemies that come near him while stealthed.',
  :image_path => 'images/skills/stalk.jpg'
})
the_madman.create_skill_2({
  :name => 'Barrel Roll',
  :description => 'The Madman does a Barrel Roll, smashing into opponents in his path, then rolling back to his original position. Enemy units caught in his wake are damaged and stunned.',
  :image_path => 'images/skills/barrel_roll.jpg'
})
the_madman.create_skill_3({
  :name => 'Gash',
  :description => 'The Madman becomes increasingly proficient at gutting his enemies, giving him a higher chance to critically strike them.',
  :image_path => 'images/skills/gash.jpg'
})
the_madman.create_skill_4({
  :name => 'Berserk',
  :description => 'The Madman flips out, going totally berserk, increasing his attack and movement speed.',
  :image_path => 'images/skills/berserk.jpg'
})
the_madman.save




arachna = Hero.create( {
    :name => 'Arachna',
    :description => 'It is said that for every fear and phobia that afflicts Man and Beast alike, there is a daemon waiting to be born. Arachna -- chittering, skulking, crooked and wicked -- spawns from the fear of spiders. Protected by a chitinous exoskeleton as strong as cold iron, she stalks, and traps, and slaughters her enemies.',
    :image_path => 'images/heroes/arachna.jpg',
    :primary_attr => 'Agility'
  })
arachna.create_skill_1({
  :name => 'Webbed Shot',
  :description => 'Arachna imbues her attack with webbing, slowing enemies on impact.',
  :image_path => 'images/skills/webbed_shot.jpg'
})
arachna.create_skill_2({
  :name => 'Harden Carapace',
  :description => 'Arachna hardens her carapace for a short duration, increasing her resistance to magical attacks.',
  :image_path => 'images/skills/harden_carapace.jpg'
})
arachna.create_skill_3({
  :name => 'Precision',
  :description => 'Arachna inspires nearby ranged units, increasing their base damage. Also increases Arachnas base damage.',
  :image_path => 'images/skills/precision.jpg'
})
arachna.create_skill_4({
  :name => 'Spider Sting',
  :description => 'Hurls a Spiderling toward a target enemy unit that can reveal stealthed enemies. Upon reaching its destination, the Spiderling viciously attacks the enemy unit, poisoning it, slowing its movement and attack speed.',
  :image_path => 'images/skills/spider_sting.jpg'
})
arachna.save


corrupted_disciple = Hero.create( {
    :name => 'Corrupted Disciple',
    :description => 'Having traded Sols sacred flame for the potent and unholy energy of the Hellbourne, the Corrupted Disciple is now little more than a battery of black magic. He unleashes this fell sorcery in many forms, some to his benefit but all to the agony of those around him.',
    :image_path => 'images/heroes/corrupted_disciple.jpg',
    :primary_attr => 'Agility'
  })
corrupted_disciple.create_skill_1({
  :name => 'Electric Tide',
  :description => 'The Corrupted Disciple unleashes an Electric Tide from his Orb, dealing damage to everyone around himself as the Tide expands and contracts.',
  :image_path => 'images/skills/electric_tide.jpg'
})
corrupted_disciple.create_skill_2({
  :name => 'Corrupted Conduit',
  :description => 'The Corrupted Disciple links himself with an enemy, draining their damage while enhancing his own. The Disciple gains vision of any enemy he is draining.',
  :image_path => 'images/skills/corrupted_conduit.jpg'
})
corrupted_disciple.create_skill_3({
  :name => 'Static Charge',
  :description => 'The Corrupted Disciples Orb charges his body with electricity, enhancing his movement speed while shocking enemies who try to cast spells on him.',
  :image_path => 'images/skills/static_charge.jpg'
})
corrupted_disciple.create_skill_4({
  :name => 'Overload',
  :description => 'The Corrupted Disciple overloads his armor with electricity, jolting the lowest health target around him repeatedly, lowering its armor in the process.',
  :image_path => 'images/skills/overload.jpg'
})
corrupted_disciple.save


sand_wraith = Hero.create( {
    :name => 'Sand Wraith',
    :description => 'Legends long said that when the sirocco howls off the Great Waste, it is screaming of a Sand Wraith. In the past years, the legend has been borne out, as this ancient evil has glided through Newerth, leaving curses, confusion, and despair in his dusty wake.',
    :image_path => 'images/heroes/sand_wraith.jpg',
    :primary_attr => 'Agility'
  })
sand_wraith.create_skill_1({
  :name => 'Deserts Curse',
  :description => 'The Sand Wraith calls upon the endless Deserts Curse, covering the ground ahead of him with sand. Enemies caught in the sand are slowed while the Sand Wraith can move faster and is unhindered by cliffs or trees.',
  :image_path => 'images/skills/deserts_curse.jpg'
})
sand_wraith.create_skill_2({
  :name => 'Deserted',
  :description => 'The Sand Wraith can prey on those who are alone, granting him increased damage when an enemy is not near any allies.',
  :image_path => 'images/skills/deserted.jpg'
})
sand_wraith.create_skill_3({
  :name => 'Dissipate',
  :description => 'Using sand itself as a shield, the Sand Wraith reduces incoming damage and reflects it back to any enemies around him.',
  :image_path => 'images/skills/dissipate.jpg'
})
sand_wraith.create_skill_4({
  :name => 'Mirage',
  :description => 'The Sand Wraith tricks the mind, causing an illusion of himself to appear next to all enemy heroes and attack them. At any moment he wishes, the Sand Wraith can take the place of one of those illusions.',
  :image_path => 'images/skills/mirage.jpg'
})
sand_wraith.save


forsaken_archer = Hero.create( {
    :name => 'Forsaken Archer',
    :description => 'Once a woodland huntress who captured the hearts of countless men, the Forsaken Archer was taken against her will and slain by a spurned suitor. As she lay dying she forged a terrible pact with the daemons who discovered her broken body. Now, rather than hearts it is souls she captures, wielding them as weapons. Atop the skeletal remains of a beast she once hunted, the forsaken archer rains terror upon any who stand in her path.',
    :image_path => 'images/heroes/forsaken_archer.jpg',
    :primary_attr => 'Agility'
  })
forsaken_archer.create_skill_1({
  :name => 'Crippling Volley',
  :description => 'The Forsaken Archer fires a Volley of barbed arrows high into the sky, dispersing them over an area and pinning any enemy caught in their path to the ground.',
  :image_path => 'images/skills/crippling_volley.jpg'
})
forsaken_archer.create_skill_2({
  :name => 'Split Fire',
  :description => 'By drawing even more from the stolen souls she keeps trapped in her quiver, the Forsaken Archer is able to fire arrows that split into parts, striking multiple targets.',
  :image_path => 'images/skills/split_fire.jpg'
})
forsaken_archer.create_skill_3({
  :name => 'Call of the Damned',
  :description => 'With the cursed powers bestowed on her by the Hellbourne, the Forsaken Archer is able to bring the soulless bodies of her victims back from the dead to fight by her side as skeletal warriors.',
  :image_path => 'images/skills/call_of_the_damned.jpg'
})
forsaken_archer.create_skill_4({
  :name => 'Piercing Arrows',
  :description => 'Fueled by the rage in her heart, the Forsaken Archer fires Piercing Arrows that fly straight through her target, striking any other enemies in its path behind them before it finally dissipates.',
  :image_path => 'images/skills/piercing_arrows.jpg'
})
forsaken_archer.save


fayde = Hero.create( {
    :name => 'Fayde',
    :description => 'A shadow cast by the evil in the hearts of Man and Beast alike, Fayde lurks in the dark places of Newerth. While her scythe-like claws are terrible enough, it is her ability to call forth new shadows of herself--or her foes--that is most awful of all.',
    :image_path => 'images/heroes/fayde.jpg',
    :primary_attr => 'Agility'
  })
fayde.create_skill_1({
  :name => 'Cull',
  :description => 'Fayde swings her scythe in a wide arc, dealing heavy damage to enemies while the darkness in its wake either destoys their mana instantly or stuns them.',
  :image_path => 'images/skills/cull.jpg'
})
fayde.create_skill_2({
  :name => 'Burning Shadows',
  :description => 'Fayde summons a wave of darkness, causing the shadows of enemy heroes hit to turn against them for a short time.',
  :image_path => 'images/skills/burning_shadows.jpg'
})
fayde.create_skill_3({
  :name => 'Scythe Stance',
  :description => 'Fayde becomes a master at using her Scythe or bending the Shadows around her, protecting her from damage and enhancing her other abilities. Fayde starts in Scythe Stance.',
  :image_path => 'images/skills/scythe_stance.jpg'
})
fayde.create_skill_4({
  :name => 'Reflection',
  :description => 'Creates a seamless copy of yourself that does full damage while Fayde goes stealth. When Fayde attacks from stealth she cripples the enemy, dealing heavy damage over a few seconds.',
  :image_path => 'images/skills/reflection.jpg'
})
fayde.save


blacksmith = Hero.create( {
    :name => 'Blacksmith',
    :description => 'The smoke-blackened foundries of the Iron City have long been known to produce the endless stream of weapons and armor that make the Legions war against the Hellbourne possible. But now, as manpower becomes harder to replace than supplies, the very Blacksmiths themselves have joined the battlefield, bringing strength earned through decades of toil and a mastery over fire itself.',
    :image_path => 'images/heroes/blacksmith.jpg',
    :primary_attr => 'Intelligence'
  })
blacksmith.create_skill_1({
  :name => 'Fireball',
  :description => 'Hurls a scorching fireball at target opponent, both damaging and stunning them.',
  :image_path => 'images/skills/fireball.jpg'
})
blacksmith.create_skill_2({
  :name => 'flaming_hammer',
  :description => 'The Blacksmith throws a flaming hammer at a target enemy, which explodes on impact. The explosion causes the target to burn, taking damage over time, slowing their movement speed, and reducing their magic armor.',
  :image_path => 'images/skills/flaming_hammer.jpg'
})
blacksmith.create_skill_3({
  :name => 'Frenzy',
  :description => 'The Blacksmith uses his control over fire to motivate an ally the best way he knows how: with heat! Starts a non-harmful blaze on a friendly unit that increases attack speed, movement speed, and cast speed.',
  :image_path => 'images/skills/frenzy.jpg'
})
blacksmith.create_skill_4({
  :name => 'Chaotic Flames',
  :description => 'The Blacksmith is experienced at gambling with fire, increasing the power of his other spells. When casting his other spells, he has a chance to achieve a much more powerful result.',
  :image_path => 'images/skills/chaotic_flames.jpg'
})
blacksmith.save


nymphora = Hero.create( {
    :name => 'Nymphora',
    :description => 'Nymphora has long been a protectress of Newerths secret beauties, its secluded glades and crystal springs. One might think that the paragon of butterflies and skylarks would have little role in the brutal carnage that has engulfed the world, but one need only see the tiny fangs revealed by her smile to know that she holds secret dangers of her own.',
    :image_path => 'images/heroes/nymphora.jpg',
    :primary_attr => 'Intelligence'
  })
nymphora.create_skill_1({
  :name => 'Volatile Pod',
  :description => 'Nymphora spawns a Volatile Pod at a target location. The pod bursts after a brief delay, damaging enemies and healing allies in the area.',
  :image_path => 'images/skills/volatile_pod.jpg'
})
nymphora.create_skill_2({
  :name => 'Grace of the Nymph',
  :description => 'Nymphora blesses an allied target with her grace, giving them back Mana over 4 seconds.',
  :image_path => 'images/skills/grace_of_the_nymph.jpg'
})
nymphora.create_skill_3({
  :name => 'Nymphoras Zeal',
  :description => 'Shoots forth a wisp to damage and stun enemies in a line. For each enemy hit, Nymphora has her movement speed and attack speed buffed.',
  :image_path => 'images/skills/nymphoras_zeal.jpg'
})
nymphora.create_skill_4({
  :name => 'Teleport',
  :description => 'Nymphora channels the power of the forest, connecting with all living things in it. Through this power she is able to teleport herself and, at higher levels, some nearby allies to a target destination of her choosing.',
  :image_path => 'images/skills/teleport.jpg'
})
nymphora.save


glacius = Hero.create( {
    :name => 'Glacius',
    :description => 'The berserker warriors of the land of Frostfield have long had a legend of Glacius, an ancient warrior who would break free of his frozen prison when the lands of Newerth needed him most. When he did not appear to combat the Beast Horde, many lost faith. But on the eve of the war with the Hellbourne, a man made more of cold than flesh emerged from the tundra, wrapped in mist and armored in ice. The stranger claimed the name Glacius, and his potent magics have made believers of those who doubted his identity.',
    :image_path => 'images/heroes/glacius.jpg',
    :primary_attr => 'Intelligence'
  })
glacius.create_skill_1({
  :name => 'Tundra Blast',
  :description => 'Glacius assaults a group of enemies with an explosion of ice. All enemies hit by the explosion are damaged and have their movement and attack speed slowed.',
  :image_path => 'images/skills/tundra_blast.jpg'
})
glacius.create_skill_2({
  :name => 'Ice Imprisonment',
  :description => 'Glacius encases a target enemy unit in ice. The target unit is frozen solid, rendering it unable to move or attack. The target unit takes damage over time while frozen. If an ally is frozen, they are protected by ice.',
  :image_path => 'images/skills/ice_imprisonment.jpg'
})
glacius.create_skill_3({
  :name => 'Chilling Presence',
  :description => 'Glacius helps his allies remain cool in the face of danger, giving them a clear and calm mind. Increases Mana regeneration to all allied Heroes no matter where they are on the map.',
  :image_path => 'images/skills/chilling_presence.jpg'
})
glacius.create_skill_4({
  :name => 'Glacial Downpour',
  :description => 'Glacius showers the area around him with shards of ice. The shards will randomly strike around Glacius, slowing the attack and movement speed of nearby enemies and dealing intense damage to them.',
  :image_path => 'images/skills/glacial_downpour.jpg'
})
glacius.save


thunderbringer = Hero.create( {
    :name => 'Thunderbringer',
    :description => 'Unlike the wild lightning he commands, the Thunderbringer is marked by his calm patience and careful adherence to the ancient Beast protocols and etiquette. Though considered a bit of a fogey by others, he is an undeniable master of shamanic lore and a powerful wielder of mystic energies.',
    :image_path => 'images/heroes/thunderbringer.jpg',
    :primary_attr => 'Intelligence'
  })
thunderbringer.create_skill_1({
  :name => 'Chain Lightning',
  :description => 'Thunderbringer zaps a target enemy unit with volatile lightning. The lightning then bounces to additional nearby enemy units.',
  :image_path => 'images/skills/chain_lightning.jpg'
})
thunderbringer.create_skill_2({
  :name => 'Blast of Lightning',
  :description => 'Thunderbringer blasts a target enemy unit with lightning, dealing moderate damage and very briefly stunning it. The area around the target is lit up briefly, giving vision and revealing nearby stealthed units.',
  :image_path => 'images/skills/blast_of_lightning.jpg'
})
thunderbringer.create_skill_3({
  :name => 'Lightning Rod',
  :description => 'Enemies near Thunderbringer act as lightning rods, taking damage every time he casts a spell. The damage is proportional to their current Health.',
  :image_path => 'images/skills/lightning_rod.jpg'
})
thunderbringer.create_skill_4({
  :name => 'Lightning Storm',
  :description => 'Thunderbringer strikes every enemy hero on the map with lightning, dealing damage and revealing the area around them briefly.',
  :image_path => 'images/skills/lightning_storm.jpg'
})
thunderbringer.save




pollywog_priest = Hero.create( {
    :name => 'Pollywog Priest',
    :description => 'For centuries, every great Frog of the marsh peoples has wielded both political and magical power as the chief priest of the Wild Cults. Called upon by his Beast brethren in this time of war, the Pollywog Priest has come forth to use those powers in defense of his people and Newerth itself.',
    :image_path => 'images/heroes/pollywog_priest.jpg',
    :primary_attr => 'Intelligence'
  })
pollywog_priest.create_skill_1({
  :name => 'Electric Jolt',
  :description => 'Pollywog Priest electrifies a target unit and some of the units near it, dealing damage to each.',
  :image_path => 'images/skills/electric_jolt.jpg'
})
pollywog_priest.create_skill_2({
  :name => 'Morph',
  :description => 'Pollywog Priest briefly transforms an enemy into a bullfrog, rendering it unable to attack or cast spells for the duration. If cast on an illusion, the illusion will be instantly killed.',
  :image_path => 'images/skills/morph.jpg'
})
pollywog_priest.create_skill_3({
  :name => 'Tongue Tied',
  :description => 'Pollywog Priest holds an enemy unit with his tongue, preventing it from moving, attacking, casting spells, or using items. The Tongue cause Magic damage over time to the target enemy.',
  :image_path => 'images/skills/tongue_tied.jpg'
})
pollywog_priest.create_skill_4({
  :name => 'Voodoo Wards',
  :description => 'Pollywog Priest summons several controllable Voodoo Wards at a desired location. The wards will attack nearby enemies. With lasers.',
  :image_path => 'images/skills/voodoo_wards.jpg'
})
pollywog_priest.save


tempest = Hero.create( {
    :name => 'Tempest',
    :description => 'Spirits born of the elements, Tempests howl across the land raining fire and ice alike, indeed even calling great meteors from the heavens. Summoned of old by the Beast Horde, these ethereal beings now are summoners themselves, bringing elementals and even shadows of themselves onto the battlefield. Even their allies view these strange beings with awe bordering on fear.',
    :image_path => 'images/heroes/tempest.jpg',
    :primary_attr => 'Intelligence'
  })
tempest.create_skill_1({
  :name => 'Glacial Blasts',
  :description => 'Tempest blasts a target enemy with icy winds, chilling it every two seconds. Being chilled causes the target to take damage and be stunned briefly.',
  :image_path => 'images/skills/glacial_blast.jpg'
})
tempest.create_skill_2({
  :name => 'Elemental',
  :description => 'Tempest sacrifices a target unit and extracts from it the very elements that composed its being. With these elements, Tempest creates three elementals under his control.',
  :image_path => 'images/skills/elemental.jpg'
})
tempest.create_skill_3({
  :name => 'Meteor',
  :description => 'Attuned to all things natural and cosmic, Tempest calls down a meteor that ignites a target area, causing units within to take damage over time.',
  :image_path => 'images/skills/meteor.jpg'
})
tempest.create_skill_4({
  :name => 'Elemental Void',
  :description => 'Tempest uses his power over the elements to create an extremely low pressure system at target location, causing fierce winds to drag all enemy units toward that target location, dealing damage over time.',
  :image_path => 'images/skills/elemental_void.jpg'
})
tempest.save


ophelia = Hero.create( {
    :name => 'Ophelia',
    :description => 'Few are those who do not know of Ophelia, Queen of the Beast Horde and sister to Jeraziah. Though numerous are her talents, she is most revered for her innate ability to commune with all things natural. Both a warrior and a leader, Ophelia wields these powers over nature to serve the Legion by healing allies and recruiting the wild denizens of Newerth to their cause.',
    :image_path => 'images/heroes/ophelia.jpg',
    :primary_attr => 'Intelligence'
  })
ophelia.create_skill_1({
  :name => 'Natures Wrath',
  :description => 'Ophelia unleashes the powers of Nature on a target enemy unit, slowing it. When the effects expire, the target unit will take additional damage equal to a percentage of the damage taken while the effect was active.',
  :image_path => 'images/skills/natures_wrath.jpg'
})
ophelia.create_skill_2({
  :name => 'Ophelias Judgment',
  :description => 'Ophelia judges a target unit, dealing variable damage to it if its an enemy, or teleporting it to safety if its an ally. Instantly teleports units that Ophelia controls',
  :image_path => 'images/skills/ophelias_judgment.jpg'
})
ophelia.create_skill_3({
  :name => 'Command',
  :description => 'Ophelia takes command of a non-boss NPCs mind, gaining control of it. Units under Ophelias command gain increased Health, Health regeneration, and Mana regeneration.',
  :image_path => 'images/skills/command.jpg'
})
ophelia.create_skill_4({
  :name => 'Ophelias Touch',
  :description => 'Ophelias love for living creatures allows her to conjure up powerful healing magic, healing all allied heroes on the map and fully regenerating units under her command.',
  :image_path => 'images/skills/ophelias_touch.jpg'
})
ophelia.save


pyromancer = Hero.create( {
    :name => 'Pyromancer',
    :description => 'For centuries, the Sacred Order has recognized the "Flame-Touched," those men and women filled with a burning, if more than slightly mad, devotion to Sol. Those Flame-Touched who serve in the Legion are more commonly called Pyromancers for their mastery over fire, and creatures strongly attuned to that element.',
    :image_path => 'images/heroes/pyromancer.jpg',
    :primary_attr => 'Intelligence'
  })
pyromancer.create_skill_1({
  :name => 'Phoenix Wave',
  :description => 'Pyromancer sends forth a phoenix that damages enemies in a line.',
  :image_path => 'images/skills/phoenix_wave.jpg'
})
pyromancer.create_skill_2({
  :name => 'Dragonfire',
  :description => 'Pyromancer conjures a mighty elemental fire dragon at a target location, damaging and stunning enemies in an area.',
  :image_path => 'images/skills/dragonfire.jpg'
})
pyromancer.create_skill_3({
  :name => 'Fervor',
  :description => 'Learning to control the fire within, Pyromancer increases his cast, attack, and movement speed after casting while at the same time catching anything he hits with spells or attacks on fire for a short time.',
  :image_path => 'images/skills/fervor.jpg'
})
pyromancer.create_skill_4({
  :name => 'Blazing Strike',
  :description => 'Using power granted from Sol, Pyromancer hurls a blazing hot fireball at a target enemy, dealing massive damage.',
  :image_path => 'images/skills/blazing_strike.jpg'
})
pyromancer.save


vindicator = Hero.create( {
    :name => 'Vindicator',
    :description => 'From one generation to the next, a reclusive order of hermits have guarded apocryphal writings said to come from the Prophet himself. Vindicator, still early in his lonely quest, is the last of these lonely sentinels, but he has left his exile behind in order to join the battle against the Hellbourne. Using the potent verses inscribed in the Great Book, he wields unique and powerful magic.',
    :image_path => 'images/heroes/vindicator.jpg',
    :primary_attr => 'Intelligence'
  })
vindicator.create_skill_1({
  :name => 'Sages Lore',
  :description => 'The Vindicator unleashes forgotten lore from within The Book, causing any enemy heroes to lose health and mana until they cast a spell.',
  :image_path => 'images/skills/sages_lore.jpg'
})
vindicator.create_skill_2({
  :name => 'Masters Incantation',
  :description => 'Using the Masters Incantation inscribed within The Book, Vindicator enhances his attacks.',
  :image_path => 'images/skills/masters_incantation.jpg'
})
vindicator.create_skill_3({
  :name => 'Glyph of Silence',
  :description => 'Inscribed into the binding of The Book, the Glyph of Silence quiets the minds of those around it who cast a spell while stealing their power if they fall in battle.',
  :image_path => 'images/skills/glyph_of_silence.jpg'
})
vindicator.create_skill_4({
  :name => 'Final Chapter',
  :description => 'Releasing the power held within the final chapter of The Book, Vindicator prevents any spellcasting across the battlefield.',
  :image_path => 'images/skills/final_chapter.jpg'
})
vindicator.save


witch_slayer = Hero.create( {
    :name => 'Witch Slayer',
    :description => 'No city is more pious in its worship of Sol than Arasunia, and no man is more fervent among its zealous citizens than the Witch Slayer. Although he is viewed with uncertainty by the Beast shamans and human sorcerers in the Legion, his combat prowess and holy powers make him a mighty ally. Wielding a musket and a bladed icon of Sol, he not only can hold his own in battle, but also can sap his enemys strength and turn any ground into sacred territory.',
    :image_path => 'images/heroes/witch_slayer.jpg',
    :primary_attr => 'Intelligence'
  })
witch_slayer.create_skill_1({
  :name => 'Graveyard',
  :description => 'Most at home on holy ground, the Witch Slayer creates a temporary Graveyard in front of himself. Enemy units caught in its creation suffer the consequences.',
  :image_path => 'images/skills/graveyard.jpg'
})
witch_slayer.create_skill_2({
  :name => 'Miniturization',
  :description => 'The Witch Slayer has mastered the use of the gem socketed into his glove, letting him shrink and render an enemy useless for a short time.',
  :image_path => 'images/skills/miniturization.jpg'
})
witch_slayer.create_skill_3({
  :name => 'Power Drain',
  :description => 'Over the years the Witch Slayer has learned how to drain the power of his enemies for his own use.',
  :image_path => 'images/skills/power_drain.jpg'
})
witch_slayer.create_skill_4({
  :name => 'Silver Bullet',
  :description => 'With no other option left, the Witch Slayer fires a Silver Bullet from his gun at the target enemy. The impact usually leaves them in many small pieces.',
  :image_path => 'images/skills/silver_bullet.jpg'
})
witch_slayer.save


the_chipper = Hero.create( {
    :name => 'The Chipper',
    :description => 'The elusive chiprel race has spent countless years avoiding conflict, but the Hellbourne are not a threat easily ignored. The Chipper has taken action, piloting an advanced tactical combat and acorn collection machine. Armed with missiles, tar dispensers, and deployable saw blades, The Chipper is ready for war.',
    :image_path => 'images/heroes/the_chipper.jpg',
    :primary_attr => 'Intelligence'
  })
the_chipper.create_skill_1({
  :name => 'Rocket Barrage',
  :description => 'The Chipper can fire a small rocket in any direction from the dome on the top of his walker. The rocket will ministun, deal damage, and catch Tar on fire. If The Chipper is close to a Rocket explosion, that explosion only does half damage to prevent burning his walker in the blast.',
  :image_path => 'images/skills/rocket_barrage.jpg'
})
the_chipper.create_skill_2({
  :name => 'Tar Toss',
  :description => 'The Chipper heaves a spoonful of his own special tar solution at the target location. Any enemies hit on impact are slowed and those who take the full force of the hit will find themselves barely able to move.',
  :image_path => 'images/skills/tar_toss.jpg'
})
the_chipper.create_skill_3({
  :name => 'Focus Buffer',
  :description => 'The Chipper channels the energy of a neutron field into a temporary phase barrier for one of his allies, guarding them against Magic Damage.',
  :image_path => 'images/skills/focus_buffer.jpg'
})
the_chipper.create_skill_4({
  :name => 'Sawblade Showdown',
  :description => 'The Chipper is able to communicate with the Chiprels underground, calling upon them to push spinning sawblades out of the ground where he directs them to. Anyone unfortunate enough to be in their sharp path takes significant damage.',
  :image_path => 'images/skills/sawblade_showdown.jpg'
})
the_chipper.save


bubbles = Hero.create( {
    :name => 'Bubbles',
    :description => 'A powerful wizard once owned a pet turtle. Each day, the turtle watched and mimicked as the wizard practiced his spells. One day, the turtle fell into a magical pool and was transformed into more than a mere turtle. Now, centuries after his master died, Bubbles lives on, fighting the forces of evil.',
    :image_path => 'images/heroes/bubbles.jpg',
    :primary_attr => 'Intelligence'
  })
bubbles.create_skill_1({
  :name => 'Shell Surf',
  :description => 'Bubbles uses his shell as the focus for a teleport spell. Bubbles shell slides toward his opponents, damaging anyone it strikes. Bubbles may choose to teleport to his shell at any point in its journey.',
  :image_path => 'images/skills/shell_surf.jpg'
})
bubbles.create_skill_2({
  :name => 'Song of the Sea',
  :description => 'Bubbles plays a resounding note on his conch, damaging and silencing any foes unlucky enough to be near.',
  :image_path => 'images/skills/song_of_the_sea.jpg'
})
bubbles.create_skill_3({
  :name => 'Take Cover',
  :description => 'Bubbles retreats into his enchanted shell, becoming impervious to all forms of attack, whether magical or mundane.',
  :image_path => 'images/skills/take_cover.jpg'
})
bubbles.create_skill_4({
  :name => 'Kelp Field',
  :description => 'Arcane seaweed vines sprout from the ground, latching onto enemy heroes. Trying to escape the vines is futile - running causes them to snap, stunning and damaging their captive.',
  :image_path => 'images/skills/kelp_field.jpg'
})
bubbles.save


defiler = Hero.create( {
    :name => 'Defiler',
    :description => 'Enshrouded with shadows and the echoes of damned souls, the Defiler is a lover of decay and madness and agony. She draws strength from death around her, and can expel living, suffering shadows from her flesh. Wielding both deadly attacks and an unholy awe that strikes silence into her foes, she truly deserves her vile epithet: "Mistress of the Damned."',
    :image_path => 'images/heroes/defiler.jpg',
    :primary_attr => 'Intelligence'
  })
defiler.create_skill_1({
  :name => 'Wave of Death',
  :description => 'Exercising her mastery over death, the Defiler sends forth a Wave of Death which damages enemies in a line',
  :image_path => 'images/skills/wave_of_death.jpg'
})
defiler.create_skill_2({
  :name => 'Grave Silence',
  :description => 'The Defiler forces images of slain warriors into the minds of her foes, commanding a moment of silence which prevents them from casting spells or using abilities.',
  :image_path => 'images/skills/grave_silence.jpg'
})
defiler.create_skill_3({
  :name => 'Power in Death',
  :description => 'The Defiler embraces death, increasing the power of her other spells.',
  :image_path => 'images/skills/power_in_death.jpg'
})
defiler.create_skill_4({
  :name => 'Unholy Expulsion',
  :description => 'The Defiler expels several invulnerable spirits from her form. The spirits may not be directly controlled but will attack nearby enemies and will attack any unit that the Defiler directly attacks. When Unholy Expulsion ends, the spirits will heal the Defiler.',
  :image_path => 'images/skills/unholy_expulsion.jpg'
})
defiler.save



demented_shaman = Hero.create( {
    :name => 'Demented Shaman',
    :description => 'No greater shame has the Beast Horde than the Demented Shaman: one of their holiest priests, an initiate into their deepest secrets and greatest lore, who betrayed his people and turned to join the Hellbourne. He is a force of corruption and outrage, draining the life of the land to heal those who would destroy it and defeat those who would defend it.',
    :image_path => 'images/heroes/demented_shaman.jpg',
    :primary_attr => 'Intelligence'
  })
demented_shaman.create_skill_1({
  :name => 'Entangle',
  :description => 'The Shaman entangles a target enemy unit in vines, slowing its movement speed for a short duration and very briefly stunning it. The vines then tighten around the target unit, causing damage over time.',
  :image_path => 'images/skills/entangle.jpg'
})
demented_shaman.create_skill_2({
  :name => 'Arcane Hide',
  :description => 'The Shaman enchants a targeted allied unit with an Arcane Hide that reduces all incoming damage for a limited number of attacks',
  :image_path => 'images/skills/arcane_hide.jpg'
})
demented_shaman.create_skill_3({
  :name => 'Healing Wave',
  :description => 'The Shaman casts a healing wave that can bounce between multiple allied units. The healing wave absorbs life from the area surrounding the healed unit, damaging enemy units in the immediate area around a healed unit.',
  :image_path => 'images/skills/healing_wave.jpg'
})
demented_shaman.create_skill_4({
  :name => 'Storm Cloud',
  :description => 'The Shaman conjures a storm at a target location. All heroes within the radius of the storm when it first appears will be affected by it. Allied heroes will gain armor over time, while enemy heroes will lose armor over time.',
  :image_path => 'images/skills/storm_cloud.jpg'
})
demented_shaman.save


voodoo_jester = Hero.create( {
    :name => 'Voodoo Jester',
    :description => 'The Voodoo Jester haunts the dreams of countless warriors with his demented laughter, glowing eyes, and deadly magic. It is said that every time a child weeps, his power grows stronger, though some believe this rumor was invented by parents to quiet their unruly children.',
    :image_path => 'images/heroes/voodoo_jester.jpg',
    :primary_attr => 'Intelligence'
  })
voodoo_jester.create_skill_2({
  :name => 'Mojo',
  :description => 'Voodoo Jester afflicts an ally with good mojo or an enemy with bad mojo. The good mojo passes to Voodoo Jesters allies, healing those around the target over time. The bad mojo drags down Voodoo Jesters enemies, causing those around the target to take damage over time.',
  :image_path => 'images/skills/mojo.jpg'
})
voodoo_jester.create_skill_3({
  :name => 'Cursed Ground',
  :description => 'Voodoo Jester curses the very ground the enemy walks on, causing damage to them based on how much life they lost after several seconds.',
  :image_path => 'images/skills/cursed_ground.jpg'
})
voodoo_jester.create_skill_1({
  :name => 'acid_cocktail',
  :description => 'Voodoo Jester throws a wretched mix of cursed chemicals at an enemy, stunning them and nearby units one after the other.',
  :image_path => 'images/skills/acid_cocktail.jpg'
})
voodoo_jester.create_skill_4({
  :name => 'Spirit Ward',
  :description => 'Voodoo Jester channels a deadly Spirit Ward to attack enemy heroes.',
  :image_path => 'images/skills/spirit_ward.jpg'
})
voodoo_jester.save


puppet_master = Hero.create( {
    :name => 'Puppet Master',
    :description => 'Although all the daemons of the Hellbourne ranks are terrifying, few deserve to be called "creepy." Yet that is the best word for the Puppet Master, whose smirks and gibbers and cackles of glee bespeak not just the specter of death, but something worse. His puppets are offenses to life -- either false things imbued with stolen life, or living things twisted to his will.',
    :image_path => 'images/heroes/puppet_master.jpg',
    :primary_attr => 'Intelligence'
  })
puppet_master.create_skill_1({
  :name => 'Puppeteers Hold',
  :description => 'The Puppet Master ties up a target enemy with puppet strings. The strings slow down the enemys attack speed and restrain movement.',
  :image_path => 'images/skills/puppeteers_hold.jpg'
})
puppet_master.create_skill_2({
  :name => 'Puppet Show',
  :description => 'The Puppet Master enslaves an enemy unit as his Puppet. The target is driven crazy and will attack the nearest unit, be it friend or foe.',
  :image_path => 'images/skills/puppet_show.jpg'
})
puppet_master.create_skill_3({
  :name => 'Whiplash',
  :description => 'Imbuing his attack with his magical Puppet Strings, the Puppet Master is able to increase his base damage and unleash devastating attacks that damage multiple enemies.',
  :image_path => 'images/skills/whiplash.jpg'
})
puppet_master.create_skill_4({
  :name => 'Voodoo Puppet',
  :description => 'The Puppet Master imbues the essence of a target enemy in his Puppet. The Puppet can then be attacked by the Puppet Master or any of his allies. The puppet takes increased damage, and transfers damage taken to the target as Magic damage.',
  :image_path => 'images/skills/voodoo_puppet.jpg'
})
puppet_master.save



hellbringer = Hero.create( {
    :name => 'Hellbringer',
    :description => 'During the war against the Beasts, many humans became experts in summoning daemons to fight alongside the Legion. Some became addicted to this unholy act, and even when the Hellbourne turned against their masters, continued to invoke the dark rituals. One such warlock is known only as Hellbringer, now a captain in the Hellbourne army and perhaps the most despised man on Newerth.',
    :image_path => 'images/heroes/hellbringer.jpg',
    :primary_attr => 'Intelligence'
  })
hellbringer.create_skill_1({
  :name => 'Unholy Shackles',
  :description => 'Hellbringer binds a target enemy with unholy shackles, reducing its movement speed and attack speed',
  :image_path => 'images/skills/unholy_shackles.jpg'
})
hellbringer.create_skill_2({
  :name => 'Death Boil',
  :description => 'Hellbringer inflicts a target enemy and those nearby him with a disease that causes their very insides to boil, dealing increasing damage over time.',
  :image_path => 'images/skills/death_boil.jpg'
})
hellbringer.create_skill_3({
  :name => 'Life Void',
  :description => 'Hellbringer casts a Life Void over a targeted area, causing enemies hit to have reduced Magic Armor. Additionally, damage those targets take will heal Hellbringer.',
  :image_path => 'images/skills/life_void.jpg'
})
hellbringer.create_skill_4({
  :name => 'Summon Malphas',
  :description => 'Summon a large demon and stun all enemies in an area around where it is summoned.',
  :image_path => 'images/skills/summon_malphas.jpg'
})
hellbringer.save



torturer = Hero.create( {
    :name => 'Torturer',
    :description => 'Many years ago, the Torturer was just a dying man who made a pact to serve the Hellbourne in exchange for eternal life. However, to ensure his loyalty without the distraction of physical temptations, the Hellbourne stripped the man of his physical body leaving the pure energy of destruction, agony, and hate.',
    :image_path => 'images/heroes/torturer.jpg',
    :primary_attr => 'Intelligence'
  })
torturer.create_skill_1({
  :name => 'Chain Reaction',
  :description => 'The Torturer summons powerful chains at a target location which whip nearby enemies, damaging and stunning them.',
  :image_path => 'images/skills/chain_reaction.jpg'
})
torturer.create_skill_2({
  :name => 'Impalement',
  :description => 'The Torturer constantly summons many blades around him for a duration, impaling random enemies and structures near him.',
  :image_path => 'images/skills/impalement.jpg'
})
torturer.create_skill_3({
  :name => 'Agonizing Bonds',
  :description => 'The Torturer wraps an enemy with constricting chains, damaging it and nearby enemies and dragging them towards the target.',
  :image_path => 'images/skills/agonizing_bonds.jpg'
})
torturer.create_skill_4({
  :name => 'Torment',
  :description => 'The Torturer forces his Torment onto nearby enemies every second, damaging them.',
  :image_path => 'images/skills/torment.jpg'
})
torturer.save



wretched_hag = Hero.create( {
    :name => 'Wretched Hag',
    :description => 'The Wretched Hag haunted Newerths darkness long before the Hellbourne spilled forth. A fiendish hag fatted off the flesh of children and virgin brides, she keeps as her only company a swarm of bats -- the only creatures that can abide her shrieking cries.',
    :image_path => 'images/heroes/wretched_hag.jpg',
    :primary_attr => 'Intelligence'
  })
wretched_hag.create_skill_1({
  :name => 'Haunt',
  :description => 'The Wretched Hag haunts a target unit with a bat, slowing its movement speed and dealing periodic damage.',
  :image_path => 'images/skills/haunt.jpg'
})
wretched_hag.create_skill_2({
  :name => 'Flash of Darkness',
  :description => 'The Wretched Hag disappears in a flash of darkness, only to instantly reappear at a target location.',
  :image_path => 'images/skills/flash_of_darkness.jpg'
})
wretched_hag.create_skill_3({
  :name => 'Sonar Scream',
  :description => 'Unleashing a high frequency scream, the Wretched Hag damages all nearby enemies.',
  :image_path => 'images/skills/sonar_scream.jpg'
})
wretched_hag.create_skill_4({
  :name => 'Bat Blast',
  :description => 'The Wretched Hag lets loose a torrent of magical bats in a target direction. Enemies caught within the blast are heavily damaged.',
  :image_path => 'images/skills/bat_blast.jpg'
})
wretched_hag.save



succubus = Hero.create( {
    :name => 'Succubus',
    :description => 'Many a soldier of the Legion has disappeared on solitary watches when the Succubus is at large, lured in by her seductive calls. Swollen with stolen life, this daemon offers no true pleasure to those who succumb to her advances, but all the same her name carries a certain terrible allure.',
    :image_path => 'images/heroes/succubus.jpg',
    :primary_attr => 'Intelligence'
  })
succubus.create_skill_1({
  :name => 'smitten',
  :description => 'Succubus causes a target enemy to be smitten with her beauty. Drastically reduces their base attack damage.',
  :image_path => 'images/skills/smitten.jpg'
})
succubus.create_skill_2({
  :name => 'Heartache',
  :description => 'Succubus breaks the heart of a foe, and feeds off the despair it causes, simultaneously damaging the enemy and healing herself.',
  :image_path => 'images/skills/heartache.jpg'
})
succubus.create_skill_3({
  :name => 'Mesmerize',
  :description => 'Succubus mesmerizes a target. The target becomes completely disabled, and takes some damage over time. If any unit attacks the mesmerized target, the effects are passed to them.',
  :image_path => 'images/skills/mesmerize.jpg'
})
succubus.create_skill_4({
  :name => 'Succubus Hold',
  :description => 'Succubus drains the essence of an enemy, dealing damage over time and stealing mana. While being drained, the target enemy is unable to act.',
  :image_path => 'images/skills/succubus_hold.jpg'
})
succubus.save


plague_rider = Hero.create( {
    :name => 'Plague Rider',
    :description => 'The pestilential stench of the Plague Rider can be smelled for miles, a foul warning of the diseases following in its wake. Mounted atop his undead steed, carried aloft on a stinking cloud of flies, the Plague Rider sows sickness among friends and enemies alike, all with the end of spreading disease across the lands of Newerth.',
    :image_path => 'images/heroes/plague_rider.jpg',
    :primary_attr => 'Intelligence'
  })
plague_rider.create_skill_1({
  :name => 'Contagion',
  :description => 'The Plague Rider instantly afflicts an enemy with a Contagion, damaging and Infecting all nearby enemies.',
  :image_path => 'images/skills/contagion.jpg'
})
plague_rider.create_skill_2({
  :name => 'Cursed Shield',
  :description => 'Places a Cursed Shield on an ally, granting them increased armor and causing any enemy who attack them to become infected.',
  :image_path => 'images/skills/cursed_shield.jpg'
})
plague_rider.create_skill_3({
  :name => '',
  :description => '',
  :image_path => 'images/skills/.jpg'
})
plague_rider.create_skill_4({
  :name => '',
  :description => '',
  :image_path => 'images/skills/.jpg'
})
plague_rider.save


soul_reaper = Hero.create( {
    :name => 'Soul Reaper',
    :description => 'The Soul Reaper is born in the depths of Hell itself and has risen to the surface on a mission to capture the souls of Newerth. With the authority to instantly judge those he comes in contact with, even the strongest of the Legion wither when he approaches.',
    :image_path => 'images/heroes/soul_reaper.jpg',
    :primary_attr => 'Intelligence'
  })
soul_reaper.create_skill_1({
  :name => 'Judgment',
  :description => 'The Soul Reaper instantly judges those around him, determining their fate. Enemies take damage while allies are healed.',
  :image_path => 'images/skills/judgment.jpg'
})
soul_reaper.create_skill_2({
  :name => 'Withering Presence',
  :description => 'No hero is without blemish. All who face the Soul Reaper face their every regret. Every harrowing moment spent in the Soul Reapers presence damages those forced to endure it.',
  :image_path => 'images/skills/withering_presence.jpg'
})
soul_reaper.create_skill_3({
  :name => 'Inhuman Nature',
  :description => 'The Soul Reaper feeds on failure, and his power grows when those he judges fall. Each death he reaps replenishes his store of mana.',
  :image_path => 'images/skills/inhuman_nature.jpg'
})
soul_reaper.create_skill_4({
  :name => 'Demonic Execution',
  :description => 'The Soul Reaper summons a Demonic Execution against the target, stunning and dealing damage based on how close to death they are.',
  :image_path => 'images/skills/demonic_execution.jpg'
})
soul_reaper.save


armadon = Hero.create( {
    :name => 'Armadon',
    :description => 'A stolid and stalwart defender of the weak, whether Man or Beast, the long-lived Armadon refused to take part in the war between the Legion and the Horde, and instead maintained a neutral haven amidst the strife. With the arrival of the Hellbourne, however, Armadons choice became clear, and he hefted his mighty mace in the service of good. The gruff warrior is now a key hero in the New Legion.',
    :image_path => 'images/heroes/armadon.jpg',
    :primary_attr => 'Strength'
  })
armadon.create_skill_1({
  :name => 'Snot Storm',
  :description => 'Hurls a wad of Snot at target enemy unit, reducing armor and slowing speed. Additional Snot Wads will further reduce speed and armor.',
  :image_path => 'images/skills/snot_storm.jpg'
})
armadon.create_skill_2({
  :name => 'Spine Burst',
  :description => 'Showers the area around Armadon with quills, damaging nearby enemies. If a unit was struck by Armadons quills recently it will take extra damage.',
  :image_path => 'images/skills/spine_burst.jpg'
})
armadon.create_skill_3({
  :name => 'Armordillo',
  :description => 'Armadon fortifies his spines, reducing damage taken from the rear and sides. An extra spine burst is released based on damage taken.',
  :image_path => 'images/skills/armordilla.jpg'
})
armadon.create_skill_4({
  :name => 'Restless',
  :description => 'Armadon temporarily increases his movement speed and attack damage for every spell he casts.',
  :image_path => 'images/skills/restless.jpg'
})
armadon.save



behemoth = Hero.create( {
    :name => 'Behemoth',
    :description => 'Earth-shakers and wall-breakers, Behemoths march across the battlefield wielding uprooted trees with deadly force. The sheer force of their attacks brings enemies to their knees, where powerful blows make short work of them. Of all the Beasts, none are so mighty as these noble creatures, nor any so willing to stand between the daemons and their friends.',
    :image_path => 'images/heroes/behemoth.jpg',
    :primary_attr => 'Strength'
  })
behemoth.create_skill_1({
  :name => 'Fissure',
  :description => 'With a mighty slam of his tree trunk, the Behemoth rips the earth apart, damaging and stunning enemies in front of him and leaving an impassable mound of terrain.',
  :image_path => 'images/skills/fissure.jpg'
})
behemoth.create_skill_2({
  :name => 'Enrage',
  :description => 'The Behemoth unleashes his anger, causing his next attack to have increased damage.',
  :image_path => 'images/skills/enrage.jpg'
})
behemoth.create_skill_3({
  :name => 'Heavyweight',
  :description => 'Causes the Behemoth to shake the earth with each spell he casts, dealing damage and stunning nearby opponents.',
  :image_path => 'images/skills/heavyweight.jpg'
})
behemoth.create_skill_4({
  :name => 'Shockwave',
  :description => 'The Behemoth slams the ground with all his might, causing a devastating shockwave around him. The shockwave ricochets off nearby enemies, effectively increasing the damage dealt based on the number of nearby enemy units.',
  :image_path => 'images/skills/shockwave.jpg'
})
behemoth.save


hammerstorm = Hero.create( {
    :name => 'Hammerstorm',
    :description => 'Mighty and stoic, this famed warrior left behind the ruins of his home for a place in King Malikens first Legion. From boyhood on, he has known nothing but battle, and his silent determination and deadly strength have earned him the epithet "Hammerstorm." Every blow of his hammer resounds like a death knell across the battlefield',
    :image_path => 'images/heroes/hammerstorm.jpg',
    :primary_attr => 'Strength'
  })
hammerstorm.create_skill_1({
  :name => 'Hammer Throw',
  :description => 'Hammerstorm throws his mighty hammer at a target enemy, damaging and stunning anyone near where it lands.',
  :image_path => 'images/skills/hammer_throw.jpg'
})
hammerstorm.create_skill_2({
  :name => 'Mighty Swing',
  :description => 'Hammerstorm attacks with great might, causing his attacks to damage nearby enemies in addition to his main target.',
  :image_path => 'images/skills/mighty_swing.jpg'
})
hammerstorm.create_skill_3({
  :name => 'Galvanize',
  :description => 'Everyone else is a loser compared to Hammerstorm. Fortunately, Hammerstorms awesomeness is so great that he influences nearby allies with his battle cry, buffing their armor and movement speed.',
  :image_path => 'images/skills/galvanize.jpg'
})
hammerstorm.create_skill_4({
  :name => 'Brute Strength',
  :description => 'Hammerstorm unleashes a savage fury within him, majorly increasing his attack damage temporarily.',
  :image_path => 'images/skills/brute_strength.jpg'
})
hammerstorm.save



pebbles = Hero.create( {
    :name => 'Pebbles',
    :description => 'The elemental creatures of Newerth have long kept away from mortal struggles, seeking instead to heal the destruction left in their wake. In the current war, however, some elementals have taken arm against the daemons, and the huge and implacable Pebbles is one of them.',
    :image_path => 'images/heroes/pebbles.jpg',
    :primary_attr => 'Strength'
  })
pebbles.create_skill_1({
  :name => 'Stalagmites',
  :description => 'Pebbles summons forth an eruption of stalagmites at a target location, stunning and damaging all enemies in the area.',
  :image_path => 'images/skills/stalagmites.jpg'
})
pebbles.create_skill_2({
  :name => 'Chuck',
  :description => 'Pebbles throws a nearby unit to target location, damaging it and all enemies in an area around where it lands.',
  :image_path => 'images/skills/chuck.jpg'
})
pebbles.create_skill_3({
  :name => 'Slab Skin',
  :description => 'Grants bonus armor and reduces the duration of debuffs.',
  :image_path => 'images/skills/slab_skin.jpg'
})
pebbles.create_skill_4({
  :name => 'Enlarge',
  :description => 'Makes Pebbles grow larger, increasing attack damage, move speed, adding to the power of his other skills, yet greatly slowing his attack speed.',
  :image_path => 'images/skills/enlarge.jpg'
})
pebbles.save



keeper_of_the_forest = Hero.create( {
    :name => 'Keeper of the Forest',
    :description => 'An ancient protector of the forest, the Keeper fights to save the lush lands of Newerth he has tended to his whole long life. Possessing a spiritual link to the trees, the Keeper has the ability to see what they see, be hidden amongst them, and even use them as brutal weapons to aid him in battle.',
    :image_path => 'images/heroes/keeper_of_the_forest.jpg',
    :primary_attr => 'Strength'
  })
keeper_of_the_forest.create_skill_1({
  :name => 'Camouflage',
  :description => 'The Keeper uses his influence over the forest to hide his allies from enemy sight. Grants invisibility to target unit so long as they remain near trees.',
  :image_path => 'images/skills/camouflage.jpg'
})
keeper_of_the_forest.create_skill_2({
  :name => 'Tree Sight',
  :description => 'The Keeper links his mind with a target tree, sharing its vision.',
  :image_path => 'images/skills/tree_sight.jpg'
})
keeper_of_the_forest.create_skill_3({
  :name => 'Natures Protection',
  :description => 'The Keeper grants part of the forests power to the target ally, increasing their armor and regeneration for a period of time.',
  :image_path => 'images/skills/natures_protection.jpg'
})
keeper_of_the_forest.create_skill_4({
  :name => 'Root',
  :description => 'The Keeper calls upon the roots in the ground to disarm and immobilize his foes, as well as damage them over time.',
  :image_path => 'images/skills/root.jpg'
})
keeper_of_the_forest.save



legionnaire = Hero.create( {
    :name => 'Legionnaire',
    :description => 'Legionnaires, the namesakes of the Legion itself, bring unflinching power to the battlefield. With their massive battle-axes, these warriors spread carnage among their foes and cleave bloody swaths through enemy ranks. Even those daemons born of fear itself can be terrified by these heroes of the Legion.',
    :image_path => 'images/heroes/legionnaire.jpg',
    :primary_attr => 'Strength'
  })
legionnaire.create_skill_1({
  :name => 'Taunt',
  :description => 'The Legionnaire taunts nearby foes, forcing them to attack him for a few seconds. The Legionnaire prepares himself for the attack, increasing his armor significantly for the duration.',
  :image_path => 'images/skills/taunt.jpg'
})
legionnaire.create_skill_2({
  :name => 'Terrifying Charge',
  :description => 'The Legionnaire charges very quickly at a target foe and swings wide with his mighty axe upon reaching them, dealing damage and Terrifying those unfortunate enough to be standing there. Terrified enemies attack very quickly, but do less damage per attack.',
  :image_path => 'images/skills/terrifying_charge.jpg'
})
legionnaire.create_skill_3({
  :name => 'Whirling Blade',
  :description => 'The Legionnaires skill with a Battle Axe is unrivaled. Every time he is attacked, he has a small chance to perform a Whirling Blade maneuver, which damages all nearby enemies.',
  :image_path => 'images/skills/whirling_blade.jpg'
})
legionnaire.create_skill_4({
  :name => 'Decapitate',
  :description => 'The Legionnaire performs a mighty attack with his Battle Axe, attempting to decapitate a target enemy. If the target is low on Health, this attack will instantly kill the target.',
  :image_path => 'images/skills/decapitate.jpg'
})
legionnaire.save



predator = Hero.create( {
    :name => 'Predator',
    :description => 'With huge, lance-like claws of solid bone emerging from their forearms, and spikes fit to impale the strongest foe spread across their hard shell, Predators seem more like daemons than Beasts. The men who fight beside them look at them with recollected fear from the days the Predators hunted humans, not daemons. But the hunger, speed, and rage they bring to bear against the Hellbourne are a welcome boon.',
    :image_path => 'images/heroes/predator.jpg',
    :primary_attr => 'Strength'
  })
predator.create_skill_1({
  :name => 'Venomous Leap',
  :description => 'The Predator leaps toward an enemy unit, then strikes them with venomous claws. The enemy takes some damage and is slowed briefly.',
  :image_path => 'images/skills/venomous_leap.jpg'
})
predator.create_skill_2({
  :name => 'Stone Hide',
  :description => 'The Predator makes his hide like stone, granting him Magic Immunity, dispelling debuffs, and increasing his armor temporarily.',
  :image_path => 'images/skills/stone_hide.jpg'
})
predator.create_skill_3({
  :name => 'Carnivorous',
  :description => 'The Predator feasts on his opponents flesh with each attack, allowing him to topple the mightiest warriors. Each attack damages opponents for a percentage of their current Health, and heals the Predator based on the damage dealt.',
  :image_path => 'images/skills/carnivorous.jpg'
})
predator.create_skill_4({
  :name => 'Terror',
  :description => 'The Predator roars, instilling Terror in nearby enemies, reducing their armor. Allies who attack enemies affected by Terror will receive increased attack and movement speed.',
  :image_path => 'images/skills/terror.jpg'
})
predator.save



jereziah = Hero.create( {
    :name => 'Jereziah',
    :description => 'King Jeraziah, the hope of humanity and one of the two leaders of the new Legion, is not just a mighty warrior but also the chosen of Sol himself. Charged with divine fervor and favor, he rallies his men and wreaks havoc among the daemons. The light that shines forth from him leads all toward victory, and represents the dawning of a new day, one without cloud or shadow.',
    :image_path => 'images/heroes/jereziah.jpg',
    :primary_attr => 'Strength'
  })
jereziah.create_skill_1({
  :name => 'Inner Light',
  :description => 'Jeraziah unleashes a nearby allied units Inner Light, healing them. Nearby enemies are seared by the power of the Light, causing them to take damage.',
  :image_path => 'images/skills/inner_light.jpg'
})
jereziah.create_skill_2({
  :name => 'Protective Charm',
  :description => 'Jeraziah blesses an allied unit with protective charm that grants immunity to Magic and removes all debuffs.',
  :image_path => 'images/skills/protective_charm.jpg'
})
jereziah.create_skill_3({
  :name => 'Righteous Strike',
  :description => 'A righteous anger builds up in Jeraziah, allowing him to perform a Righteous Strike when attacking, dealing increased damage which splashes to nearby enemies and slows their movement speed briefly. Can only occur once every few seconds.',
  :image_path => 'images/skills/righteous_strike.jpg'
})
jereziah.create_skill_4({
  :name => 'Sols Blessing',
  :description => 'Jeraziah calls upon the power of Sol to protect himself and his comrades. Sol answers his call, causing them to take almost no Physical damage and receive high Health regeneration for a brief time.',
  :image_path => 'images/skills/sols_blessing.jpg'
})
jereziah.save



pandamonium = Hero.create( {
    :name => 'Pandamonium',
    :description => 'The last of a race of warrior-monks sworn to a chaste existence in the misty Sang-La mountains, Pandamonium has left his bamboo groves for the battlefield. He moves with a grace that belies his great stature and strikes with fury surprising in one with such an apparently gentle nature. And though he is a creature of few words, the Beasts put great stock in his wisdom.',
    :image_path => 'images/heroes/pandamonium.jpg',
    :primary_attr => 'Strength'
  })
pandamonium.create_skill_1({
  :name => 'Flurry',
  :description => 'Pandamonium unleashes devastating physical attacks on all opponents in front of him, pushing them, along with himself, in the direction he faces.',
  :image_path => 'images/skills/flurry.jpg'
})
pandamonium.create_skill_2({
  :name => 'Flick',
  :description => 'Placing his enemies where he sees fit, Pandamonium flicks a target foe into the air, causing them to land behind him. Upon landing, the target foe is slowed and has reduced armor.',
  :image_path => 'images/skills/flick.jpg'
})
pandamonium.create_skill_3({
  :name => 'Cannon Ball',
  :description => 'Pandamonium throws himself into the air, damaging all nearby enemies when he lands. Any enemies he lands on are stunned. If he doesnt have any enemies to soften his fall, he gets stuck in the ground temporarily.',
  :image_path => 'images/skills/cannon_ball.jpg'
})
pandamonium.create_skill_4({
  :name => 'Face Smash',
  :description => 'Pandamonium beats a target enemy unit senseless, disabling it while he unleashes four extra-powerful attacks on it over several seconds.',
  :image_path => 'images/skills/face_smash.jpg'
})
pandamonium.save



rampage = Hero.create( {
    :name => 'Rampage',
    :description => 'A ranger of the vast plains of Seradati, Rampage has captured in his human form the strength of the Beasts. Atop his mighty rhino Horatio, Rampage smashes through enemy lines and moves at times with unnerving speed.',
    :image_path => 'images/heroes/rampage.jpg',
    :primary_attr => 'Strength'
  })
rampage.create_skill_1({
  :name => 'Stampede',
  :description => 'Rampage points out a target to his rhino, starting a Stampede that slowly builds in speed and power until reaching the target, stunning them.',
  :image_path => 'images/skills/stampede.jpg'
})
rampage.create_skill_2({
  :name => 'Might of the Herd',
  :description => 'The rhino Rampage rides is a born leader, enhancing the movement of any nearby allies and giving Rampage more damage the faster he is moving.',
  :image_path => 'images/skills/might_of_the_herd.jpg'
})
rampage.create_skill_3({
  :name => 'Horned Strike',
  :description => 'There is a chance Rampages rhino unleashes a devastating Horned Strike when he begins an attack, doing bonus damage and pushing then enemy backwards.',
  :image_path => 'images/skills/horned_strike.jpg'
})
rampage.create_skill_4({
  :name => 'Favor of Sol',
  :description => 'Rampage, favored by Sol, calls upon his power to move so quickly he instantly appears next to an enemy hero of his choosing, dealing damage and pushing them back.',
  :image_path => 'images/skills/favor_of_sol.jpg'
})
rampage.save



tundra = Hero.create( {
    :name => 'Tundra',
    :description => 'ARE WE THERE YETI?',
    :image_path => 'images/heroes/tundra.jpg',
    :primary_attr => 'Strength'
  })
tundra.create_skill_1({
  :name => 'Piercing Shards',
  :description => 'Tundra can control ice and form it into deadly spikes at a whim, letting him unleashing two waves of them towards his enemies. The Shards will curve towards any target, destroying trees in their path.',
  :image_path => 'images/skills/piercing_shards.jpg'
})
tundra.create_skill_2({
  :name => 'Call of Winter',
  :description => 'Tundra has lived alone so long he has formed bonds with the birds and wildlife of the mountains. His two favorites are Shiver and Coeurl. When he calls, they will come to his aid in battle for a short time.',
  :image_path => 'images/skills/call_of_winter.jpg'
})
tundra.create_skill_3({
  :name => 'Coldblooded',
  :description => 'Tundra gets more and more focused on beating an enemy in battle the longer he fight them. Every attack he lands will increase his attack speed against that target, letting him beat them faster! When he switches targets, though, he has to build his speed back up.',
  :image_path => 'images/skills/coldblooded.jpg'
})
tundra.create_skill_4({
  :name => 'Avalanche',
  :description => 'Tundra can control the mountain itself when in a fit of rage, summoning a piece of a glacier to smash his target and toss any nearby enemy heroes away.',
  :image_path => 'images/skills/avalanche.jpg'
})
tundra.save




devourer = Hero.create( {
    :name => 'Devourer',
    :description => 'Consuming and destroying all in its path, the corpulent, putrid Devourer exists only to feed. No pain can match the agony of its hunger, and so it shrugs off all attacks, spreading its rot and disease across the battlefield like doom itself.',
    :image_path => 'images/heroes/devourer.jpg',
    :primary_attr => 'Strength'
  })
devourer.create_skill_1({
  :name => 'Guttling Hook',
  :description => 'The Devourer launches his Guttling Hook at a target unit or location. The first targetable unit that touches the hook will be dragged back to the Devourer.',
  :image_path => 'images/skills/guttling_hook.jpg'
})
devourer.create_skill_2({
  :name => 'Decay',
  :description => 'The Devourer allows himself to decay, draining his Health over time and releasing poisonous gasses that both damage and slow nearby enemy units.',
  :image_path => 'images/skills/decay.jpg'
})
devourer.create_skill_3({
  :name => 'Cadaver Armor',
  :description => 'This grotesque armor increases the Devourers Magic Armor and permanently adds strength for each nearby hero kill or each kill he makes.',
  :image_path => 'images/skills/cadaver_armor.jpg'
})
devourer.create_skill_4({
  :name => 'Devour',
  :description => 'The Devourer grabs a target enemy and feasts on their flesh, dealing massive damage for every second he feeds.',
  :image_path => 'images/skills/devour.jpg'
})
devourer.save




electrician = Hero.create( {
    :name => 'Electrician',
    :description => 'The finest Legion spies learned mere months ago of a mad archaeologist whose unnatural thirst for knowledge led him into a forbidden pact with the Hellbourne. His discoveries have been used to forge Shocktroopers, men fused with Ancient technology, pulsing with violent energy. These horrifying hybrids bear a tank of liquid lightning upon their backs, and they wield its contents as both sword and shield.',
    :image_path => 'images/heroes/electrician.jpg',
    :primary_attr => 'Strength'
  })
electrician.create_skill_1({
  :name => 'Static Grip',
  :description => 'The Electrician binds a target in a static grip, preventing them from casting spells, moving, attacking, or using items for a short time. The Electrician is dragged slowly toward the target.',
  :image_path => 'images/skills/static_grip.jpg'
})
electrician.create_skill_2({
  :name => 'Electric Shield',
  :description => 'The electrician uses electricity to create a shield around himself. The shield will negate a portion of incoming damage at the cost of Electricians Mana.',
  :image_path => 'images/skills/electric_shield.jpg'
})
electrician.create_skill_3({
  :name => 'Energy Absorption',
  :description => 'The Electrician discharges energy around him. Nearby enemies are damaged and have their Mana drained. For each enemy with Mana drained, the Electrician absorbs some Mana and gains bonus movement speed.',
  :image_path => 'images/skills/energy_absorption.jpg'
})
electrician.create_skill_4({
  :name => 'Cleansing Shock',
  :description => 'Electrician shocks a target unit, removing debuffs and increasing movement speed if the target is an ally, or removing buffs and decreasing movement speed if target is an enemy.',
  :image_path => 'images/skills/cleansing_shock.jpg'
})
electrician.save




kraken = Hero.create( {
    :name => 'Kraken',
    :description => 'A scourge upon the seas of Newerth, the Kraken consumed countless victims who were unfortunate enough to travel his waters. Though he be ashore, the Kraken brings the wrath of the ocean to the battlefield, dragging his enemies to depths unknown, unseen, and unwanted.',
    :image_path => 'images/heroes/kraken.jpg',
    :primary_attr => 'Strength'
  })
kraken.create_skill_1({
  :name => 'Splash',
  :description => 'When attacking, Kraken unleashes a mighty attack that damages nearby enemies.',
  :image_path => 'images/skills/splash.jpg'
})
kraken.create_skill_2({
  :name => 'Tsunami Charge',
  :description => 'Kraken charges toward a target location with great strength and speed, damaging and knocking aside enemies in his path.',
  :image_path => 'images/skills/tsunami_charge.jpg'
})
kraken.create_skill_3({
  :name => 'Tidal Pull',
  :description => 'Krakens presence slows nearby enemies with a continuous tidal pull.',
  :image_path => 'images/skills/tsunami_pull.jpg'
})
kraken.create_skill_4({
  :name => 'Whirlpool',
  :description => 'Kraken forms two connected whirlpools, one at a target location and one around himself. After a short time, the whirlpool near Kraken sucks everyone in and spits them out at the targeted location. Enemies are damaged in the process.',
  :image_path => 'images/skills/whirlpool.jpg'
})
kraken.save


war_beast = Hero.create( {
    :name => 'War Beast',
    :description => 'Once a hound keeper in the underworld, War Beast heeded the call to arms in order to feed the victims of Newerth to his pets. War Beasts allegiance was never questioned. His hunger for carnage remains unending, feeding the animal within.',
    :image_path => 'images/heroes/war_beast.jpg',
    :primary_attr => 'Strength'
  })
war_beast.create_skill_1({
  :name => 'Summon Hellhounds',
  :description => 'War Beast Summons forth Hellhounds from the underworld to attack his enemies.',
  :image_path => 'images/skills/summon_hellhounds.jpg'
})
war_beast.create_skill_2({
  :name => 'Battle Cry',
  :description => 'War Beast lets out a mighty battle cry, adding bonus damage to himself and units under his command.',
  :image_path => 'images/skills/battle_cry.jpg'
})
war_beast.create_skill_3({
  :name => 'Primal Rage',
  :description => 'War Beast builds his Primal Rage, increasing attack speed and attack damage of himself and units under his control.',
  :image_path => 'images/skills/primal_rage.jpg'
})
war_beast.create_skill_4({
  :name => 'Metamorphosis',
  :description => 'War Beast transforms into a Hellhound Lieutenant, gaining a larger health pool, a critical attack, and a speed boost.',
  :image_path => 'images/skills/metamorphosis.jpg'
})
war_beast.save


pharaoh = Hero.create( {
    :name => 'Pharaoh',
    :description => '
The Hellbourne unearthed this creature from the shifting sands of the Great Waste. He could originally speak but a single word, which has become his name -- Pharaoh. It seems he must once have been a mighty king, wrapped as he is in golden finery, but now he is simply a monster, summoning forth his dead servants from the grave and conjuring fire and fear across the land.',
    :image_path => 'images/heroes/pharaoh.jpg',
    :primary_attr => 'Strength'
  })
pharaoh.create_skill_1({
  :name => 'Hellfire',
  :description => 'Pharaoh conjures plumes of fire around him for a short duration, hitting random nearby enemy targets, damaging each and stunning them briefly.',
  :image_path => 'images/skills/hellfire.jpg'
})
pharaoh.create_skill_2({
  :name => 'Wall of Mummies',
  :description => 'Pharaoh summons a wall of Mummies around himself and anyone close enough to him. Enemies who come close will be pushed away, causing damage and draining some Mana.',
  :image_path => 'images/skills/wall_of_mummies.jpg'
})
pharaoh.create_skill_3({
  :name => 'Tormented Soul',
  :description => 'Pharaoh unleashes a tormented soul toward a target location anywhere on the map. The soul self destructs when it reaches the designated location, releasing its dark energy to damage nearby enemies.',
  :image_path => 'images/skills/tormented_soul.jpg'
})
pharaoh.create_skill_4({
  :name => 'Wrath of the Pharaoh',
  :description => 'Pharaoh directs all of his focus in a target direction. His focus is so intense it takes physical form as it travels in the desired direction. If it impacts with an enemy unit, it will damage and stun them and Pharaoh will charge toward its location.',
  :image_path => 'images/skills/wrath_of_the_pharaoh.jpg'
})
pharaoh.save


accursed = Hero.create( {
    :name => 'Accursed',
    :description => '
Many have speculated as to what great, damned warrior now lives in torment within the burning armor that marches alongside the Hellbourne army. The Accursed, as he is known, screams in agony as he brings fiery devastation to his foes, but his actions seem driven more by a desire to find oblivion than by malice.',
    :image_path => 'images/heroes/accursed.jpg',
    :primary_attr => 'Strength'
  })
accursed.create_skill_1({
  :name => 'Cauterize',
  :description => 'At the cost of some of his own Health, Accursed bursts the air around a target, dealing damage to them if they are an enemy or healing them if they are an ally.',
  :image_path => 'images/skills/cauterize.jpg'
})
accursed.create_skill_2({
  :name => 'Fire Shield',
  :description => 'Accursed covers a friendly unit in a shield of flames protecting them from damage and removing harmful effects. If the shield is damaged to its breaking point, it will explode, dealing Magical damage to nearby enemies equal to that of the damage absorbed.',
  :image_path => 'images/skills/fire_shield.jpg'
})
accursed.create_skill_3({
  :name => 'Sear',
  :description => 'Causes Accurseds attacks to sear his target, slowing their movement speed. Any ally that attacks the affected unit will be buffed with increased attack speed and movement speed.',
  :image_path => 'images/skills/sear.jpg'
})
accursed.create_skill_4({
  :name => 'Flame Consumption',
  :description => 'Accursed summons a powerful fire tornado around himself which, when fueled with damage, causes him to regain his life.',
  :image_path => 'images/skills/flame_consumption.jpg'
})
accursed.save


pestilence = Hero.create( {
    :name => 'Pestilence',
    :description => 'Once a councilor to the Moon Queen, Pestilence betrayed his people -- for as a male, he could never have come to rule them himself. With his own powers augmented by the Hellbourne, he is as strong as the queen he served in the past. But his arts are unholy: mindless, ravenous insects he calls forth, cruel and violent skills he deploys.',
    :image_path => 'images/heroes/pestilence.jpg',
    :primary_attr => 'Strength'
  })
pestilence.create_skill_1({
  :name => 'Flight',
  :description => 'Pestilence takes limited flight, increasing his movement speed at the cost of taking increased damage',
  :image_path => 'images/skills/flight.jpg'
})
pestilence.create_skill_2({
  :name => 'Impale',
  :description => 'Pestilence calls on the aid of his underground insect brethren to strike nearby enemies from underground. Enemies are impaled, causing them to be stunned and take damage, followed by reduced movement speed.',
  :image_path => 'images/skills/impale.jpg'
})
pestilence.create_skill_3({
  :name => 'Gore',
  :description => 'Pestilence gains a chance to stab an enemy unit with his frontal horn when attacking, causing them to take some additional damage and be stunned briefly.',
  :image_path => 'images/skills/gore.jpg'
})
pestilence.create_skill_4({
  :name => 'Swarm',
  :description => 'Pestilence releases a swarm of locusts at a target, lowering their armor and revealing them temporarily.',
  :image_path => 'images/skills/swarm.jpg'
})
pestilence.save


maliken = Hero.create( {
    :name => 'Maliken',
    :description => 'Once the greatest defender of mankind and lord over the entire Legion, Maliken walked too close to the darkness and was claimed by it. Now he is nothing more than a slave among the damned -- but his incredible might has only grown in his downfall. Wielding a damned sword fed by his own damned soul, Maliken is the bane of the very heroes he once led into battle.',
    :image_path => 'images/heroes/maliken.jpg',
    :primary_attr => 'Strength'
  })
maliken.create_skill_1({
  :name => 'Sword Throw',
  :description => 'Maliken throws his sword, damaging enemies it hits. Maliken may teleport to his sword while it is in flight.',
  :image_path => 'images/skills/sword_throw.jpg'
})
maliken.create_skill_2({
  :name => 'Sword of the Damned',
  :description => 'Malikens legendary weapon, the Sword of the Damned, is capable of two different attack modes: Enchanted Flames grants him increased damage at the cost of his own life, while Life Essence grants him very high life steal at the cost of reduced damage.',
  :image_path => 'images/skills/sword_of_the_damned.jpg'
})
maliken.create_skill_3({
  :name => 'Hellbourne Zeal',
  :description => 'Maliken allows his wounds to fuel his rage, increasing his attack speed based on how much health he is missing.',
  :image_path => 'images/skills/hellbourne_zeal.jpg'
})
maliken.create_skill_4({
  :name => 'possession',
  :description => 'Maliken allows himself to become possessed, transforming him into a full daemon temporarily. While in this form, Malikens attack becomes ranged and his attacks splash.',
  :image_path => 'images/skills/possession.jpg'
})
maliken.save


magmus = Hero.create( {
    :name => 'Magmus',
    :description => 'The primordial and elemental creature known as Magmus is no demon, though he fights alongside the Hellbourne. Rather, he was drawn forth from the earth, as evil calls to evil and separate flames join to form an inferno. A holdover from an ancient, cataclysmic age of fire, Magmus dreams of returning Newerth to ash, lava, and cinder, and he wields his considerable might and magic in that terrible cause.',
    :image_path => 'images/heroes/magmus.jpg',
    :primary_attr => 'Strength'
  })
magmus.create_skill_1({
  :name => 'Lava Surge',
  :description => 'Riding on lava, Magmus surges toward a target location, damaging and stunning enemy units in his path.',
  :image_path => 'images/skills/lava_surge.jpg'
})
magmus.create_skill_2({
  :name => 'Steam Bath',
  :description => 'Magmus releases extreme heat, toasting the area around him. The resulting steam damages nearby enemy units over time and cloaks Magmus from enemy eyes.',
  :image_path => 'images/skills/steam_bath.jpg'
})
magmus.create_skill_3({
  :name => 'volcanic_touch',
  :description => 'Upon attacking enemy units, Magmus flaming mace instills an intense heat in them. If they die while under the effects of this intense heat, they explode, damaging the nearby enemies of Magmus.',
  :image_path => 'images/skills/volcanic_touch.jpg'
})
magmus.create_skill_4({
  :name => 'Eruption',
  :description => 'Magmus channels the power of the lava, releasing it after a short delay. The resulting lava grows over time, damaging nearby enemies over several seconds.',
  :image_path => 'images/skills/eruption.jpg'
})
magmus.save


deadwood = Hero.create( {
    :name => 'Deadwood',
    :description => 'Born of the cruelly tainted lands of Newerth, Deadwood is the undead husk of the first Keeper of the Forest. All around him, living things wilt, and he has little hesitation to destroy trees or use them as weapons. Despite seeking the destruction of Newerth, he still commands the incredible strength and natural powers of a forest guardian, thus combining the cruelty of the Hellbourne with the powers that once belonged only to the Beast Horde.',
    :image_path => 'images/heroes/deadwood.jpg',
    :primary_attr => 'Strength'
  })
deadwood.create_skill_1({
  :name => 'Rotten Grasp',
  :description => 'Calling upon the deep corruption underground, Deadwood can root anyone standing in the targeted area after a short delay.',
  :image_path => 'images/skills/rotten_grasp.jpg'
})
deadwood.create_skill_2({
  :name => 'Uproot',
  :description => 'Deadwood can turn any tree into a weapon by simply tearing it out of the ground. While holding a tree, he can throw it at an enemy, mini-stunning and snaring them.',
  :image_path => 'images/skills/uproot.jpg'
})
deadwood.create_skill_3({
  :name => 'Clearcutting',
  :description => 'Deadwood, not known for his love of nature, can gain the ability to destroy trees he walks through. Empowered by the destruction he has caused, Deadwood gains movement speed, attack speed, and slow resistance when destroying trees.',
  :image_path => 'images/skills/clearcutting.jpg'
})
deadwood.create_skill_4({
  :name => 'Willowmaker',
  :description => 'An ageless and powerful force, Deadwood uses his stump arm to punch an enemy, dealing massive damage. The hit is so powerful a wave of force echoes behind the target, weakening those it hits.',
  :image_path => 'images/skills/willowmaker.jpg'
})
deadwood.save

