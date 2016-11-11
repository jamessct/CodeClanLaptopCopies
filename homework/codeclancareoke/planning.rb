#####room class#####

Room class will deal with booking time slots (how long you would like to sing for), how many people are checking in.  and the price that the service accumulates. T

Pricing/rules:

#If age = 0-11: "You are too young, please get off the premises"
#If age = 12-17: "You must be accompanied by an adult" 
#If age = 18-59: "Standard rates apply"
#If age = 60+: "Pensioners discount" (20% off standard rate)

#1 song = £3, #2 songs = £5, #3 songs £6 (or by time?)

####Song class#####

Song class will contain a library of songs (kind of like the dictionary file for hangman).  This class will simply pass the song information to the room class.

Song information = 
#song title/artist
#duration

#####Guest class#####

Guest class will deal with the issue of how many guests will be booking a slot.  It will maybe take into account age and whether the guest has a loyalty card, and work out the price accordingly

Info:

#Name
#Age
#Loyalty card?

######Caraoke_runner#####

#Will start by asking how many are in the party.
#Then asks for the name(#maybe unnecessary?), age and loyalty_card? of each one in turn, and saves this info into an instance of the guest class
#Then displays price list for number of songs and prompts user to choose from a song list
#Then gives the total cost of the transaction, and asks if user would like to procede
#Prompts user to "HAVE FUN :D"

