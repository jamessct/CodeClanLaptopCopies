# countries = {
#   uk: {
#     capital: "London",
#     population: "At least 5"
#       },
#   germany: {
#     capital: "Berlin",
#     population: "More than nein"
#   }
# }

# puts countries[:germany][:capital]

avengers = {
  hulk: {
    original_name: "Bruce Banner",
    attack_1: "super-punch",
    attack_2: "super-kick"
    },
    iron_man: {
      original_name: "Tony Star",
      attacks: {
        attack1: {
          attack: "IRON FIST",
          power: 9001
          },
          {attack_2: {
            attack: "IRON BOOT",
            power: 2
          }
        }
      }
    }

    puts avengers[:iron_man][:attacks][:attack1][:power]