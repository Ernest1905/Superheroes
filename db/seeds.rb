begin
    heroes = Hero.create!([
      { name: "Kamala Khan", supername: "Ms. Marvel" },
      { name: "Doreen Green", supername: "Squirrel Girl" },
      { name: "Gwen Stacy", supername: "Spider-Gwen" },
      { name: "Barry ALLEN", supername: "The FLASH" },
      { name: "Tony Stark", supername: "Iron-Man" },
      { name: "Steve Rodgers", supername: "Captain America" }
    ])
  rescue ActiveRecord::RecordInvalid => e
    puts "Error creating heroes: #{e.message}"
  end
  
  powers = Power.create([
    {
      name: "super strength",
      description: "gives the wielder super-human strengths"
    },
    {
      name: "flight",
      description: "gives the wielder the ability to fly through the skies at supersonic speed"
    },
    {
      name: "invisibility",
      description: "gives the wielder the ability to become invisible"
    },
    {
      name: "super speed",
      description: "gives the wielder ability to move and think at superhuman speed"
    },
    {
      name: "super intelligence",
      description: "gives the wielder the ability to think and reason at a superhuman level"
    },
    {
      name: "super vision",
      description: "gives the wielder super vision abilities"
    }
  ])
  
  hero_power = HeroPower.create([
    {
      strength: "Average",
      power_id: 1,
      hero_id: 1
    },
    {
      strength: "Strong",
      power_id: 2,
      hero_id: 2
    },
    {
      strength: "Weak",
      power_id: 3,
      hero_id: 3
    },
    {
      strength: "Average",
      power_id: 4,
      hero_id: 4
    },
    {
      strength: "Strong",
      power_id: 5,
      hero_id: 5
    },
    {
      strength: "Weak",
      power_id: 6,
      hero_id: 6
    }
  ])
  