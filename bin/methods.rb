require_relative '../config/environment'
require_relative '../models/user.rb'
require_relative './methods'

system "clear"

prompt = TTY::Prompt.new

puts "What's your name?"

input = gets.chomp

 user = User.create(name: input)

prompt.keypress("Welcome, #{user.name}. (press enter to continue)", keys: [:return])
system 'clear'

prompt.keypress("Your parents are dead.", keys: [:return])
system 'clear'

prompt.keypress("To make things worse, skeletons stole their body parts.", keys: [:return])
system 'clear'

prompt.keypress("The funeral is tonight. Not only do you not have your parents' body parts...", keys: [:return])
system 'clear'

prompt.keypress("You have nothing to say at the funeral.", keys: [:return])
system 'clear'

prompt.keypress("There's only one answer. You have to kick some skeleton ass.", keys: [:return])
system 'clear'

prompt.keypress("This is: ", keys: [:return])
system 'clear'

prompt.keypress("FRANKENSTEIN FUNERAL!!!!", keys: [:return])
system 'clear'

input = prompt.select("You heard there was a skeleton picking up a bag of chips at your local bodega. If you hurry, you can catch him. You ready?", ["Yeah!", "No, I'm too scared"])

if input == "No, I'm too scared"
    puts "Game over, coward." #ascii art (someone who is scared) , end the game here
    exit
end
system 'clear'

prompt.keypress("You run to the bodega and head straight to the chips aisle. You look to your right and...", keys: [:return])
system 'clear'

prompt.keypress("It's a skeleton!!!!", keys: [:return]) #ascii art, music 
system 'clear'

puts "it's over!"





binding.pry

