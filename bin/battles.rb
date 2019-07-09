


$skel = ["Roder Skellington", "Skelcifer Smith", "Bones MacGee", "Tired Soul", "Just Your Mom's Friend", "Helen Back"]
$bp = ["Your parent's legs", "Your parent's arms", "Your parent's heads", "Your parent's torsos"]

def battle
    part = Part.create(name: "head")
    skelName = Skeleton.create(name: $skel.sample, user_id: $user.id, bodypart_id: part.id )
    
    game_event("My name is #{skelName.name} and your parents legs taste even more delicous paired with this bag of chips!")

    $prompt.select("What Will You Do!?") do |menu|
        menu.enum '.'
      
        menu.choice 'Attack', 1 #=> -> do tty_boring_drinks end
        menu.choice 'Run', 2
        menu.choice 'Check Inventory', 3
        end
      


      


end
