require_all 'api'


$skel = ["Rodger Skellington", "Skelcifer Smith", "Bones MacGee", "Tired Soul", "Helen Back", "Mr. Bonejangles", "Dr. Skull"]




def game_over
        
        music("audio/loser.mp3")

        puts "
    ▄████  ▄▄▄       ███▄ ▄███▓▓█████     ▒█████   ██▒   █▓▓█████  ██▀███      ▄████▄   ▒█████   █     █░ ▄▄▄       ██▀███  ▓█████▄ 
    ██▒ ▀█▒▒████▄    ▓██▒▀█▀ ██▒▓█   ▀    ▒██▒  ██▒▓██░   █▒▓█   ▀ ▓██ ▒ ██▒   ▒██▀ ▀█  ▒██▒  ██▒▓█░ █ ░█░▒████▄    ▓██ ▒ ██▒▒██▀ ██▌
   ▒██░▄▄▄░▒██  ▀█▄  ▓██    ▓██░▒███      ▒██░  ██▒ ▓██  █▒░▒███   ▓██ ░▄█ ▒   ▒▓█    ▄ ▒██░  ██▒▒█░ █ ░█ ▒██  ▀█▄  ▓██ ░▄█ ▒░██   █▌
   ░▓█  ██▓░██▄▄▄▄██ ▒██    ▒██ ▒▓█  ▄    ▒██   ██░  ▒██ █░░▒▓█  ▄ ▒██▀▀█▄     ▒▓▓▄ ▄██▒▒██   ██░░█░ █ ░█ ░██▄▄▄▄██ ▒██▀▀█▄  ░▓█▄   ▌
   ░▒▓███▀▒ ▓█   ▓██▒▒██▒   ░██▒░▒████▒   ░ ████▓▒░   ▒▀█░  ░▒████▒░██▓ ▒██▒   ▒ ▓███▀ ░░ ████▓▒░░░██▒██▓  ▓█   ▓██▒░██▓ ▒██▒░▒████▓ 
    ░▒   ▒  ▒▒   ▓▒█░░ ▒░   ░  ░░░ ▒░ ░   ░ ▒░▒░▒░    ░ ▐░  ░░ ▒░ ░░ ▒▓ ░▒▓░   ░ ░▒ ▒  ░░ ▒░▒░▒░ ░ ▓░▒ ▒   ▒▒   ▓▒█░░ ▒▓ ░▒▓░ ▒▒▓  ▒ 
     ░   ░   ▒   ▒▒ ░░  ░      ░ ░ ░  ░     ░ ▒ ▒░    ░ ░░   ░ ░  ░  ░▒ ░ ▒░     ░  ▒     ░ ▒ ▒░   ▒ ░ ░    ▒   ▒▒ ░  ░▒ ░ ▒░ ░ ▒  ▒ 
   ░ ░   ░   ░   ▒   ░      ░      ░      ░ ░ ░ ▒       ░░     ░     ░░   ░    ░        ░ ░ ░ ▒    ░   ░    ░   ▒     ░░   ░  ░ ░  ░ 
         ░       ░  ░       ░      ░  ░       ░ ░        ░     ░  ░   ░        ░ ░          ░ ░      ░          ░  ░   ░        ░    
                                                        ░                      ░                                              ░      
    
    
    
    
    
    
    "
    sleep 5
    exit
end

def battle(message)
    part = Part.create(name: $bp[-1])
    skelName = Skeleton.create(name: $skel.sample, user_id: $user.id, part_id: part.id )
    
    game_event("My name is #{skelName.name} and #{$bp[-1]} #{message}")
    music("audio/metalriff.mp3")
    input = $prompt.select("What Will You Do!?", ["Attack!", "Run!"])

        if input == "Attack!"
        $bp.pop
        else
                game_over
        end
end

def victory(message)
        new_fact = Fact.create(content: $fact_generator.new_fact, user_id: $user.id)
        
        game_event(message)
        game_event("The skeleton utters its final words : #{new_fact.content}")
        game_event("That's a pretty cool fact. You're going to remember that.")
end

def inventory 
        

        game_event("Here are the body parts you've collected so far:  #{Part.pluck(:name)}.")
        game_event("Here are all of your quotes:  #{Fact.pluck(:content)}")
        input = $prompt.select("You can't get rid of body parts, but want to get rid of one of those quotes?", ["Yes", "No"])
        if input == "Yes"
                new_input = $prompt.select("Which one?", Fact.pluck(:content))
                fact = Fact.find_by content: new_input
                fact.destroy 
                system "clear"
         end

 

        system "clear"
end




