require_all 'api'


$skel = ["Roder Skellington", "Skelcifer Smith", "Bones MacGee", "Tired Soul", "Just Your Mom's Friend", "Helen Back"]


def game_over
        puts "Game over, coward." #ascii art (someone who is scared) , end the game here
    exit
end

def battle(message)
    part = Part.create(name: $bp[-1])
    skelName = Skeleton.create(name: $skel.sample, user_id: $user.id, bodypart_id: part.id )
    
    game_event("My name is #{skelName.name} and #{$bp.pop} #{message}" )

    input = $prompt.select("What Will You Do!?", ["Attack!", "Run!"])

        if input == "Attack!"
        $bp.pop
        else
                puts "Game over, coward." #ascii art (someone who is scared) , end the game here
                exit
        end
end

def victory
        new_fact = Fact.create(content: $fact_generator.new_fact, user_id: $user.id)
        
        game_event("You attack the skeleton with a high kick. It obliterates its ribcage.")
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
                
         end

 

        
end




