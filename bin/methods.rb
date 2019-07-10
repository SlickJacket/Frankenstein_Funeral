require 'bundler'
require_relative '../bin/battles.rb'
Bundler.require



# User.destroy_all
# Skeleton.destroy_all
# Part.destroy_all

# $skel = ["Roder Skellington", "Skelcifer Smith", "Bones MacGee", "Tired Soul", "Just Your Mom's Friend", "Helen Back"]
# $bp = ["Your parent's legs", "Your parent's arms", "Your parent's heads", "Your parent's torsos"]




system "clear"
Part.destroy_all

Fact.destroy_all

$prompt = TTY::Prompt.new


puts "What's your name?"

input = gets.chomp

$user = User.create(name: input)


 def game_event(message)
  $prompt.keypress(message, keys: [:return])
  system 'clear'
 end


game_event("Welcome, #{$user.name}. (press enter to continue)")
# game_event("Welcome, #{user.name}. (press enter to continue)")


game_event("Your parents are dead.")

game_event("To make things worse, skeletons stole their body parts.")

game_event("The funeral is tonight. Not only do you not have your parents' body parts...")
 
game_event("You have nothing to say at the funeral.")
 
game_event("There's only one answer. You have to kick some skeleton ass.")
 
game_event("This is: ")
 
game_event("FRANKENSTEIN FUNERAL!!!!")
 
#**************BATTLE 2 INTRO********************

input = $prompt.select("You heard there was a skeleton picking up a bag of chips at your local bodega. If you hurry, you can catch him. You ready?", ["Yeah!", "No, I'm too scared"])

if input == "No, I'm too scared"
    puts "Game over, coward." #ascii art (someone who is scared) , end the game here
    exit
end
system 'clear'

# ****************BATTLE 1! **********************

game_event("You run to the bodega and head straight to the chips aisle. You look to your right and...")

game_event("It's a skeleton!!!!") #ascii art, music 

$bp = ["Your parent's legs", "Your parent's arms", "Your parent's heads", "Your parent's torsos"]

battle("taste even more delicous paired with this bag of chips!")

victory

#***********INVENTORY CHECK***********************

input = $prompt.select("Nice job defeating that skeleton. Do you want to try and find another one, or check your inventory?", ["Go find another skeleton", "Check Inventory"])

if input == "Check Inventory"
    inventory 
end
system "clear"

#**************BATTLE 2 INTRO*********************

input = $prompt.select("Something smells fishy over at the docks, and it ain't fish, another skeleton is there buying salmon to feed his family. If you hurry, you can still catch him and pulverize his bones into a million pieces. You ready?", ["Yeah!", "No, I'm too scared"])

if input == "No, I'm too scared"
    puts "Game over, coward." #ascii art (someone who is scared) , end the game here
    exit
end
system 'clear'

# ****************BATTLE 2! **********************

game_event("You ride your motorcycle to the docks...")
game_event("You're wearing your new leather jacket, it looks great, girls are starting to notice you.")
game_event("The hot girl from your 'Intro to Cooking' class, Pamherny, wavees at you. ")
game_event("Surprised and excited, you stop for her.")
game_event("She tells you, you look cool.")
game_event("And you remind her that you are in the same cooking class together")
game_event("She doesnt remember who you are...")
game_event("You remember your parents are dead, and ride to the docks")

game_event("You arrive at the docks, and the stench of fish is powerful. But you're not after fish today... well, while you're here. When do you get the chance to come down to the docks and buy fresh fish?")

game_event("Oh no! It's a skeleton!!!!") #ascii art, music 

battle("... no hard feelings alright? It was just a job. I have a family and kids to look after!")

victory

#*****************INVENTORY CHECK**************************

input = $prompt.select("Nice job defeating that skeleton. Do you want to try and find another one, or check your inventory?", ["Go find another skeleton", "Check Inventory"])

if input == "Check Inventory"
    inventory 
end

#****************BATTLE 3 INTRO ****************************

input = $prompt.select("You're feeling more powerful than ever. Is it wrong to ~like~ killing skeletons? If so, you don't want to be right. You heard that there's a skeleton living in a porta potty at a construction site downtown. You ready? to go get him", ["Yeah!", "No, I'm too scared"])

if input == "No, I'm too scared"
    puts "Game over, coward." #ascii art (someone who is scared) , end the game here
    exit
end
system 'clear'

#****************BATTLE 3******************************#

game_event("You brush the skeleton dust off your leather jacket and fire up your SUV.")

game_event("There's not much traffic, probably because it's a holiday weekend. Memorial day.")

game_event("You think about last memorial day, when you built your parents a new bathtub so that they could be cleaner.")

game_event("Before you know it, you're at the construction site. You kick open the door of the porta potty, but no one's there. Just a bunch of skeleton poop.")

game_event("But, wait, you hear a noise behind you....")

game_event("Oh, it was just a construction worker doing loud pushups.")

game_event("Oh wait, another noise!")

game_event("It's a skeleton!!!!") #art 

battle("work really well with this outfit. Please leave me alone.")

victory 

#**************************INVENTORY****************************************#

input = $prompt.select("Nice job defeating that skeleton. Do you want to try and find another one, or check your inventory?", ["Go find another skeleton", "Check Inventory"])

if input == "Check Inventory"
    inventory 
end

#***************************BATTLE 4 INTRO******************************3

game_event("Bully's approach.. they begin to make fun of you, just like they usually do. Calling you #{$user.name}y, stupidy. And begin spitting on you as they push you to the ground and start peeing on you. You feel... like a loser.")

game_event("After they leave, and you feel safe, you just want a pick me up. So you head downtown to score.")

game_event("You guy isn't answering his door. You bein to worry, you begin to pee.")

game_event("You remove your piss soaked underwear and throw them in a dumpster in the alley next to his building. but wait, that's not your own piss you're smelling!.. well, it's that too,.. but like, there's something else too!")

game_event("ITS THE FINAL SKELETON!!!!!")

input = $prompt.select("FIGHT!?", ["Yeah!", "No, I'm too scared"])

if input == "No, I'm too scared"
    puts "Game over, coward." #ascii art (someone who is scared) , end the game here
    exit
end
system 'clear'

#*******************BATTLE 4*****************************************
battle("are right there in that dumpster. Wait... did you piss your pants? Hahaha how old are you!? Hahaha, anyways... I've given up this life of crime. I'm a humanitarian now! That's right, I volunteer every chance I get! Just about to head over to the children cancer ward right now. You want to come? I just bring them coloring books and perform magic tricks for them.")

victory

#*******************INVENTORY*******************************************

input = $prompt.select("Now that you have all your parents body parts, we can have the funeral as scheduled. It starts in 20 minutes! Hurry over so you can sew them together and get them ready!", ["Head to the funeral", "Check Inventory"])

if input == "Check Inventory"
    inventory 
end

#******************FUNERAL**************************************
game_event("You're at the funeral. Not that many people showed up. It's a holiday weekend. But it's time for your speech.")
content = Fact.pluck(:content)
if $user.facts.length < 1 
    game_event("Everyone laughs at you and calls you a loser. Wow, you couldn't even come up with a eulogy to share at your parents' funeral. That's embarrassing. Game over, coward.")
    exit
elsif $user.facts.length == 1
    game_event("My parents always used to say that #{content}. That is all. Thank you.")
    game_event("People seemed into it, but not that into it. Congratulations.") 
    exit 
elsif $user.facts.length == 2
    game_event("My parents always used to say that #{content[0]}. But it's also important to remember that #{content[1]}. That is all. Thank you.")
    game_event("People seemed pretty into it. Thanks for playing.") 
    exit  
elsif $user.facts.length == 3
    game_event("My parents always used to say that #{content[0]}. But it's also important to remember that #{content[1]}. And let's never forget that #{content[2]}. That is all. Thank you.")
    game_event("People cheer and clap and stuff. Way to go, #{$user.name} I'm in love with you.") 
    exit 
elsif $user.facts.length == 4
    game_event("My parents always used to say that #{content[0]}. But it's also important to remember that #{content[1]}. And let's never forget that #{content[2]}, especially when considering #{content[3]}. That is all. Thank you.")
    game_event("People chant your name for hours. There's buzz around town that you might win an oscar for your speech. Way to go, #{$user.name} I'm in love with you.") 
    exit 
end

puts "it's over!"








