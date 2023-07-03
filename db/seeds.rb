# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# seeds.rb

hero = Hero.create([
  { id: 1, name: "Kamala Khan", supername: "Ms. Marvel" },
  { id: 2, name: "Doreen Green", supername: "Squirrel Girl" },
  { id: 3, name: "Gwen Stacy", supername: "Spider-Gwen" }
  { id: 4, name: "Barry ALLEN", supername: "The FLASH" },
  { id: 5, name: "Tony Stark", supername: "Iron-Man" },
  { id: 6, name: "Steve Rodgers", supername: "Captain America" }

])

  


powers = Power.create([
  {
    id: 1,
    name: "super strength",
    description: "gives the wielder super-human strengths"
  },
  {
    id: 2,
    name: "flight",
    description: "gives the wielder the ability to fly through the skies at supersonic speed"
  }
  {
    id: 3,
    description: "gives the wielder the ability to fly through the skies at supersonic speed"

  }
  {
    id:  4,
    name: "super speed",
    description: "gives the weider ability to move and think at super human speed"
  }
  {
    id: 5,
    name: "Super intelligence",
    description: "gives the weider the ability to think and reason to super human abilty"

  } 
  {
    id: 6 ,
    name: " super Vision",
    description: "gives the weider super vision abilities "
  }
])
hero_power = HeroPower.create([
    {
        id: 1
        strength: "Average",
        power_id: 1,
        hero_id:  1,
    }
    {
        id: 2,
        strength: "Strong",
        power_id: 2,
        hero_id:  2
    }
    {
        id: 3,
        strength: "Weak",
        power_id: 3,
        hero_id:  3
    }
    {
        id: 4,
        strength: "Average",
        power_id: 4,
        hero_id:  4
    }
    {
        id: 5,
        strength: "Strong",
        power_id: 5,
        hero_id:  5
    }
    {
        id: ,
        strength: "Weak",
        power_id: 6,
        hero_id:  6,
    }

])


