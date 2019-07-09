

require 'bundler'
require_relative '../bin/battles.rb'
Bundler.require



# User.destroy_all
# Skeleton.destroy_all
# Part.destroy_all

# $skel = ["Roder Skellington", "Skelcifer Smith", "Bones MacGee", "Tired Soul", "Just Your Mom's Friend", "Helen Back"]
# $bp = ["Your parent's legs", "Your parent's arms", "Your parent's heads", "Your parent's torsos"]




system "clear"


$prompt = TTY::Prompt.new


# puts "What's your name?"

# input = gets.chomp

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
 

input = $prompt.select("You heard there was a skeleton picking up a bag of chips at your local bodega. If you hurry, you can catch him. You ready?", ["Yeah!", "No, I'm too scared"])

if input == "No, I'm too scared"
    puts "Game over, coward." #ascii art (someone who is scared) , end the game here
    exit
end
system 'clear'

game_event("You run to the bodega and head straight to the chips aisle. You look to your right and...")

game_event("It's a skeleton!!!!") #ascii art, music 


battle

puts "it's over!"








