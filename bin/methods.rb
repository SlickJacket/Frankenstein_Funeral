require 'bundler'
require_relative '../bin/battles.rb'
#require_relative 'run.rb'
Bundler.require

def music(file)
    pid = fork{ exec 'afplay', file } 
    system "clear"
    end

User.destroy_all
Skeleton.destroy_all
Part.destroy_all

# $skel = ["Roder Skellington", "Skelcifer Smith", "Bones MacGee", "Tired Soul", "Just Your Mom's Friend", "Helen Back"]
# $bp = ["Your parent's legs", "Your parent's arms", "Your parent's heads", "Your parent's torsos"]




system "clear"

Part.destroy_all

Fact.destroy_all

$prompt = TTY::Prompt.new

system "clear"

puts "What's your name?"

music("audio/thunderstorm.mp3")



input = gets.chomp

$user = User.create(name: input)


 def game_event(message)
  $prompt.keypress(message, keys: [:return])
  system 'clear'
 end

 def cut_music
    pid = fork{ exec 'killall', "afplay" }
 end


game_event("Welcome, #{$user.name}. (press enter to continue)")

game_event("This is you.")

game_event(" 

                         ################################                                   
                     #####################################                                
                  ###########################################                             
                #################################################                         
              #####################################################                       
            ##########################################################                    
          ##############################################################                  
         ###################################################################              
        #####################################################################             
       ########################################################################           
      ###########################################################################         
    ##############################'                   `############################       
   #################'                                      `##########################    
   ###############'                                           `########################   
   #############'                                              `#######################   
  ############.'                                                &######################   
  ###########'                                                  &######################   
 ###########3                                                   `######################   
############3                                                     `#####################  
############3                                                      &##################### 
############3                                                      &##################### 
############3                                                      &######################
############3                                                      &######################
###########'                                                       `######################
 ##########3                                                       &##################### 
     #####3                                 .#######.              `####################  
      ####3  .##############.           .###############.           `##################   
      ####3###################.      .#####################.         ##################   
      #########################.     ########################.        ################    
     ####' #######'  .---. `####     ########'  .---.  ########        ##############     
     ####3  `##' .' / (#) \ `##'      `###' .''/ (#) \  ######'        #############      
     ####3 `--'  `. \     /.'  ;     ;      `. \     /.' `----''       ############       
     ####3   _.' `-_ `---''.-'             `-.  `---' .' ``---''       &##########        
      ###3          -____-'                   `- ----'    `-._         &#########         
       ##3      _---'''      ;                       -_                &#### `.#          
       ##3     .'                                      `.             &####   :#          
       ##`     '                                         `-.         &####    :           
       ###`                 .                               `       &###    ) :           
         #3                .            .                          &###       :           
         #3               . ;        ;   .                        &###    _  .'           
          #3              : :            :                        &##       :             
          #3              `.             :                        ###      .'             
           :                .       ##-  )   .                    ##      .:              
           :           .'    `-__-~'   `'     .                   ##     : :              
           :          .                        `.                   ~~~;~  ;              
           `.        '                           `.                  .'    ;              
            :       '                              `.              .'      :              
            `.      :        _     _                :        .    .'       :              
             :     :   _.- ~' `-.-' `--._           :      .'    .'        :              
              ;    :  `---._____________.-.--'      :    .'    .'                         
              `.       `.                .'             :     .'                          
               `.        `._          _-'               ;    ;                            
                :           ~~-----~~'                  :  .'                             
                `.                                     .'  :                              
                 :           _________                 :  .'                              
                  `.                                   : :                                
                    `.                               .'-'                                 
                     :                               :                                    
                      `.                           .'                                     
                       :`.                      .-'                                       
                       : :         __        .'                                           
                       :  `-------'  `------'                        dp






")

game_event("Your parents are dead.")

game_event("To make things worse, skeletons stole their body parts.")


game_event("The funeral is tonight. Not only do you not have your parents' body parts...")
 
game_event("You have nothing to say at the funeral.")
 
game_event("There's only one answer. You have to kick some skeleton ass.")
 
game_event("This is: ")

music("audio/tolling-bell_daniel-simion.mp3")
 
game_event(" 

█████▒██▀███   ▄▄▄       ███▄    █  ██ ▄█▀▓█████  ███▄    █   ██████ ▄▄▄█████▓▓█████  ██▓ ███▄    █    
▓██   ▒▓██ ▒ ██▒▒████▄     ██ ▀█   █  ██▄█▒ ▓█   ▀  ██ ▀█   █ ▒██    ▒ ▓  ██▒ ▓▒▓█   ▀ ▓██▒ ██ ▀█   █    
▒████ ░▓██ ░▄█ ▒▒██  ▀█▄  ▓██  ▀█ ██▒▓███▄░ ▒███   ▓██  ▀█ ██▒░ ▓██▄   ▒ ▓██░ ▒░▒███   ▒██▒▓██  ▀█ ██▒   
░▓█▒  ░▒██▀▀█▄  ░██▄▄▄▄██ ▓██▒  ▐▌██▒▓██ █▄ ▒▓█  ▄ ▓██▒  ▐▌██▒  ▒   ██▒░ ▓██▓ ░ ▒▓█  ▄ ░██░▓██▒  ▐▌██▒   
░▒█░   ░██▓ ▒██▒ ▓█   ▓██▒▒██░   ▓██░▒██▒ █▄░▒████▒▒██░   ▓██░▒██████▒▒  ▒██▒ ░ ░▒████▒░██░▒██░   ▓██░   
 ▒ ░   ░ ▒▓ ░▒▓░ ▒▒   ▓▒█░░ ▒░   ▒ ▒ ▒ ▒▒ ▓▒░░ ▒░ ░░ ▒░   ▒ ▒ ▒ ▒▓▒ ▒ ░  ▒ ░░   ░░ ▒░ ░░▓  ░ ▒░   ▒ ▒    
 ░       ░▒ ░ ▒░  ▒   ▒▒ ░░ ░░   ░ ▒░░ ░▒ ▒░ ░ ░  ░░ ░░   ░ ▒░░ ░▒  ░ ░    ░     ░ ░  ░ ▒ ░░ ░░   ░ ▒░   
 ░ ░     ░░   ░   ░   ▒      ░   ░ ░ ░ ░░ ░    ░      ░   ░ ░ ░  ░  ░    ░         ░    ▒ ░   ░   ░ ░    
          ░           ░  ░         ░ ░  ░      ░  ░         ░       ░              ░  ░ ░           ░    
                                                                                                         
  █████▒█    ██  ███▄    █ ▓█████  ██▀███   ▄▄▄       ██▓                                                
▓██   ▒ ██  ▓██▒ ██ ▀█   █ ▓█   ▀ ▓██ ▒ ██▒▒████▄    ▓██▒                                                
▒████ ░▓██  ▒██░▓██  ▀█ ██▒▒███   ▓██ ░▄█ ▒▒██  ▀█▄  ▒██░                                                
░▓█▒  ░▓▓█  ░██░▓██▒  ▐▌██▒▒▓█  ▄ ▒██▀▀█▄  ░██▄▄▄▄██ ▒██░                                                
░▒█░   ▒▒█████▓ ▒██░   ▓██░░▒████▒░██▓ ▒██▒ ▓█   ▓██▒░██████▒                                            
 ▒ ░   ░▒▓▒ ▒ ▒ ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒▓ ░▒▓░ ▒▒   ▓▒█░░ ▒░▓  ░                                            
 ░     ░░▒░ ░ ░ ░ ░░   ░ ▒░ ░ ░  ░  ░▒ ░ ▒░  ▒   ▒▒ ░░ ░ ▒  ░                                            
 ░ ░    ░░░ ░ ░    ░   ░ ░    ░     ░░   ░   ░   ▒     ░ ░                                               
          ░              ░    ░  ░   ░           ░  ░    ░  ░                                            
                                                                                                         



")


 
#**************BATTLE 2 INTRO********************

cut_music
input = $prompt.select("You heard there was a skeleton picking up a bag of chips at your local bodega. If you hurry, you can catch him. You ready?", ["Yeah!", "No, I'm too scared"])
if input == "No, I'm too scared"
    game_over
end
system 'clear'

# ****************BATTLE 1! **********************

game_event(" 

|: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : |
| : : : : : : : : : : : : : : : :_________________________: : : : : : : : :|
|: : : : : : : : : : : : : : : _)                         (_ : : : : : : : |
| : : : : : : : : : : : : : : )_ :  Deli                :  _( : : : : : : :|
|: : Elevator  : : : :__________)_________________________(__________  : : |
| _____________ : _ :/ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ\: _ :|
||  _________  | /_\ '.Z.'.Z.'.Z.'.Z.'.Z.'.Z.'.Z.'.Z.'.Z.'.Z.'.Z.'.Z.' /_\ |
|| |    |    | |:=|=: |Flowers * Perfumes_________Lingerie * Candles| :=|=:|
|| |    |    | | : : :|   ______    _  .'         '.  _    ______   |: : : |
|| |    |    | |======| .' ,|,  '. /_\ |           | /_\ .'  ,|, '. |======|
|| |    |    |:|Lounge| | ;;;;;  | =|= |           | =|= |  ;;;;; | |Casino|
|| |    |    | |<---  | |_';;;'_n|     |  n______  |     |$_';;;'_| |  --->|
|| |    |    | |      | |_|-;-|__|     |-|_______|-|     |__|-;-|_| |      |
|| |    |    | |      | |________|     |           |     |________| |      |
|| |    |    | |      |                |           |                |      |
lc_|____|____|_|______|________________|           |________________|______|




")

game_event("You run to the bodega and head straight to the chips aisle. You look to your right and...")

music("audio/scream.mp3")
game_event("                  
                                                                                            
                                                    (  (|              .
                                                )   )\/ ( ( (
                                        *  (   ((  /     ))\))  (  )    )
                                        (     \   )\(          |  ))( )  (|
                                        >)     ))/   |          )/  \((  ) \
                                        (     (      .        -.     V )/   )(    (
                                        \   /     .   \            .       \))   ))
                                        )(      (  | |   )            .    (  /
                                        )(    ,'))     \ /          \( `.    )
                                        (\>  ,'/__      ))            __`.  /
                                        ( \   | / ___   ( \/     ___   \ | ( (
                                        \.)  |/  /   \__      __/   \   \|  ))
                                        .  \. |> \      | __ |      /   <|  /
                                            )/    \____/ :..: \____/     \ <
                                    )   \ (|__  .      / ;: \          __| )  (
                                    ((    )\)  ~--_     --  --      _--~    /  ))
                                    \    (    |  ||               ||  |   (  /
                                            \.  |  ||_             _||  |  /
                                            > :  |  ~V+-I_I_I-+V~  |  : (.
                                            (  \:  T\   _     _   /T  : ./
                                            \  :    T^T T-+-T T^T    ;<
                                                \..`_       -+-       _'  )
                                    )            . `--=.._____..=--'. ./    

                         
")

game_event("It's a skeleton!!!!") #ascii art, music 

$bp = ["Your parent's legs", "Your parent's arms", "Your parent's heads", "Your parent's torsos"]


battle("taste even more delicous paired with this bag of chips!")

victory("You attack the skeleton with a high kick. It obliterates its ribcage.")

#***********INVENTORY CHECK***********************
music("audio/victory.mp3")
input = $prompt.select("Nice job defeating that skeleton. Do you want to try and find another one, or check your inventory?", ["Go find another skeleton", "Check Inventory"])

if input == "Check Inventory"
    inventory 
end
system "clear"

#**************BATTLE 2 INTRO*********************

cut_music

input = $prompt.select("Something smells fishy over at the docks, and it ain't fish, another skeleton is there buying salmon to feed his family. If you hurry, you can still catch him and pulverize his bones into a million pieces. You ready?", ["Yeah!", "No, I'm too scared"])

if input == "No, I'm too scared"
    game_over
end
system 'clear'

# ****************BATTLE 2! **********************

game_event("You ride your motorcycle to the docks...")
music("audio/motorcycle.mp3")
game_event("

                                       .'-----\\ _
    \  \                              //      #``.) __
     \  \_________                     __--~~--_-\\/ |)
      \           ~~-              _-~~         -_``.|)
|\_.--~~~~~~~~~~-._  \________   _~   Harley-   |   \\
|/   (} _..._/*/   \          ~\~      Davidson |    ``.--~~~~~--__
/___-~~~    /=/~-_  ~~~--------~~--------------/    .-~\\ _________~
  *     ---/=/    \  \       /{}===_____===_  ||   /  __``.    / \   *
      / __/=/_\____\__\     /[]###/===  \###\ ||  /__/    \\ /
 |   | [ |*|___________~~~~~==/ ##\_____/## \ \|  |  |------*------|  |
      \ ~~___________________/ /_##+++++##*  | |           / \
  *     ---\_)________________/___________\_/ /    *   \ /     \ /   *
    *           *     \_)____________________/       *    ~~~~~    *
     -------                                           -------

                       
")
game_event("You're wearing your new leather jacket, it looks great, girls are starting to notice you.")
game_event("The hot girl from your 'Intro to Cooking' class, Pamherny, wavees at you. ")
game_event("Surprised and excited, you stop for her.")
game_event("She tells you, you look cool.")
game_event("And you remind her that you are in the same cooking class together")
game_event("She doesnt remember who you are...")
game_event("You remember your parents are dead, and ride to the docks")

game_event(" 

                                                                |
                    |
           |        |
         |-|-|      |
           |        |
           | {O}    |
           '--|     |
             .|]_   |
       _.-=.' |     |
      |    |  |]_   |
      |_.-='  |   __|__
       _.-='  |\   /|\
      |    |  |-'-'-'-'-.
      |_.-='  '========='
           `   |     |
            `. |    / \
              ||   /   \____.--=''''==--.._
              ||_.'--=='    |__  __  __  _.'
              ||  |    |    |\ ||  ||  || |                        ___
 ____         ||__|____|____| \||__||__||_/    __________________/|   |
|    |______  |===.---. .---.========''''=-._ |     |     |     / |   |
|    ||     |\| |||   | |   |      '===' ||  \|_____|_____|____/__|___|
|-.._||_____|_\___'---' '---'______....---===''======//=//////========|
|--------------\------------------/-----------------//-//////---------/
|               \                /                 // //////         /
|                \______________/                 // //////         /
|                                        _____===//=//////=========/
|==============================================================Bobby/
'----------------------------------------------------------------`




")
cut_music
game_event("You arrive at the docks, and the stench of fish is powerful. But you're not after fish today... well, while you're here. When do you get the chance to come down to the docks and buy fresh fish?")
music("audio/scream.mp3")
game_event(" 
      .-.
     (o.o)
      |=|
     __|__
   //.=|=.\\
  // .=|=. \\
  \\ .=|=. //
   \\(_=_)//
    (:| |:)
     || ||
     () ()
     || ||
     || ||
     == ==   
")

game_event("Oh no! It's a skeleton!!!!") #ascii art, music 

battle("... no hard feelings alright? It was just a job. I have a family and kids to look after!")

victory("You slap that skeleton across the face with a fresh salmon. That sends it to the ground.")

#*****************INVENTORY CHECK**************************

music("audio/victory.mp3")
input = $prompt.select("Nice job defeating that skeleton. Do you want to try and find another one, or check your inventory?", ["Go find another skeleton", "Check Inventory"])

if input == "Check Inventory"
    inventory 
end

#****************BATTLE 3 INTRO ****************************

input = $prompt.select("You're feeling more powerful than ever. Is it wrong to ~like~ killing skeletons? If so, you don't want to be right. You heard that there's a skeleton living in a porta potty at a construction site downtown. You ready to go get him?", ["Yeah!", "No, I'm too scared"])

if input == "No, I'm too scared"
    game_over
end
system 'clear'

#****************BATTLE 3******************************#

cut_music
game_event("You brush the skeleton dust off your leather jacket and fire up your SUV.")
music("audio/car.mp3")
game_event(" 

                                            ____
                             ______...-----'_'____\.
             _____.....----==---'\|-----''''        \
            /--------'''''  ____ |                   \
           /  __..--- | .-''    \|\                   \-___
          /| |       || |     __ | \           ____..-'    `---._
         //  |       || |    [__]| |__...----''                  `-.__
 _______//|  |       || |______\\| \ == _____         ____..---''''   \
/_______/ |  `-------'|         `\  |==.     ``---.--'   .-\\\\\\\\\| )
|         | [-]       |[-]          | //          | [ ] (  )|||||||||_'|
|         \           |             |// .-------   \_____`.----''  \ ()|
|    _____ \          |         ___ |` /    ____\_   |   (_) |__..-'   |
\   /     \ \  ____..-| -----'''    | /  .-'      `-_|_               _|
|  /  _--'-\ \         \            | | /    ___     \ |  ____:F_P:-''/
| |  /---_    `-.______|__...------'/ //  .-'   `\    \|_/      __/_-/
 \| / .-. \   _ `--..__\___...-----' | |  |  .-.  |   | ____---'/    |
   | /   \ \  \`-_____....-----------'_|  | (   ) |   |     `--'    /
   | | ( )| |  |__\________/__..-'     \  \  `-'  /   |-'\         /
   \ \    / |  |       \_     _/        \  `-.__.'   /    `--.__.-'
    \ `--' /  /          `---'           \_        _/
     \____/__/                             `------'



")

game_event("There's not much traffic, probably because it's a holiday weekend. Memorial day.")

game_event("You think about last memorial day, when you built your parents a new bathtub so that they could be cleaner.")

cut_music
game_event("Before you know it, you're at the construction site. You kick open the door of the porta potty, but no one's there. Just a bunch of skeleton poop.")

game_event(" 


                                                  __________________________
         _.-'____       ___  ___ ___ .'
   _..--| |/    |__  __|   ||   |   U|
  |  |  | ||    |  \/  |   ||   |    |
  |  |  | ||    |     / \  ||   |    |
  |  |  | ||    |     \ /  ||   |    |
  |  |  | 8]    |      |   ||   |    |
  |  | |  ||    |      |   \|   |    |         ,----==-_--.
  |  | |  ||    |      |   |    |    |        <  \/\/ (_  |
  |  | |  ||    |      |   |   /|    |         '----..----'
  |  | || ||    | 0    |   |   || '==|              ||
  | |  || ||    |     |    |   \|    |              ||
  | |  || ||     |    |    |    |    |              ||
  | |  || ||     |    |    |    |    |              ||
  | |  || ||     |    |    |    |   .'              ||
  | | | | |\     |   /|    |    |   ||              ||
  | | | | |/     |   \|     |   |   ||              ||
  | | | | ||     |    |     |   | o ||              ||
  | | | | 8]     |    |     |   |   ||              ||
  |-._| | ||    _|    |  _  |___|\  ||              ||
  '-._'-|_||___/ '----|_( )_|    |__||              ||
      '-._|-._____,-._________________-.            ||
           '-__________  _____,._______|            ''
                       


")

game_event("But, wait, you hear a noise behind you....")

game_event("Oh, it was just a construction worker doing loud pushups.")

music("audio/scream.mp3")
game_event("Oh wait, another noise!")


game_event(" 
     _.--     --._
   .'             '.
  /                 \
 ;                   ;
 |                   |
 |                   |
 ;                   ;
  \ (  --      -- ) /  
   \ \  _ )  ( _  / /
    ) )(')/  \(')( (
   (_    /\    _)
    \` -, /  \ ,-  /
     `\ /    \ /`
      |/\/\/\/\/\|
      |\        /|
      ; |/\/\/\| ;
       \`-`--`-`/
        \      /
         ',__,'
          q__p
          q__p
          q__p
          q__p


")

game_event("It's a skeleton!!!!") #art 

battle("work really well with this outfit. Please leave me alone.")

victory ("You jump onto the skeleton's back and tear its arms off.")

#**************************INVENTORY****************************************#

music("audio/victory.mp3")

input = $prompt.select("Nice job defeating that skeleton. Do you want to try and find another one, or check your inventory?", ["Go find another skeleton", "Check Inventory"])

if input == "Check Inventory"
    inventory 
end

#***************************BATTLE 4 INTRO******************************3
cut_music
game_event(" 

      ***           @@@@@@@       #############       .:::::::::::::.  
    *******         @@  @@@@      ##         ##      .::'  '''''  '::. 
   *********       @@    @@@      #  ~~   ~~  #      :::           ::: 
/\* ### ### */\    @ 0  0 @@@     #  ()   ()  #      :::           ::: 
|    @ / @    |   @@  I   @@@@    (     ^     )      :::           ::: 
\/\    ^    /\/   @@      @@@@     |         |       ::'           ':: 
   \  ===  /      @@  ==  @@@      |  {===}  |      : : /~~~' '~~~\ : :
    \_____/        @+     @@        \       /       :(:   |   :):
     _|_|_         @+++  +@@       /  -----  \      '.:     / \     :.'
  *$$$$$$$$$*       @+   +@     ---  |%\ /%|  ---    ':    (. .)    :' 
                     +88$8     /     |%%%%%|     \    '.  .:::::.  .'
                                     |%/ \%|           :  <----->  :   
                                                       '.  ~:::~  .'
                                                         '.  '  .'     



")

game_event("Bullies approach.. they begin to make fun of you, just like they usually do. Calling you little #{$user.name}y, stupidy. And begin spitting on you as they push you to the ground and start peeing on you. You feel... like a loser.")

game_event("After they leave, and you feel safe, you just want a pick me up. So you head downtown to score.")

game_event(" 
                                                               ^
                _______     ^^^
               |xxxxxxx|  _^^^^^_
               |xxxxxxx| | [][]  |
            ______xxxxx| |[][][] |
           |++++++|xxxx| | [][][]|      DOWNTOWN
           |++++++|xxxx| |[][][] |
           |++++++|_________ [][]|
           |++++++|=|=|=|=|=| [] |
           |++++++|=|=|=|=|=|[][]|
___________|++HH++|  _HHHH__|   _________   _________  _________
         _______________   ______________      ______________
__________________  ___________    __________________    ____________




")

game_event("You guy isn't answering his door. You bein to worry, you begin to pee.")

game_event("You remove your piss soaked underwear and throw them in a dumpster in the alley next to his building. but wait, that's not your own piss you're smelling!.. well, it's that too,.. but like, there's something else too!")

music("audio/scream")

game_event("

                             :oooooooooo:
                        ::oOOOOooo:::::ooooO88Oo:
                     :oOOo:                   :oO8O:
                  :O8O:                           oO8o
                O8O:                                 :OO:
              o8o                                      :8o
             88:                                         O8:
           o8o                                            :8o
          8O:                                               oO
         8o                                                  oO
        8o                                                    Oo
      :8o                                              :      :8:
     :8:                                               :       :8:
    :8:                                               :o        oO
    O::o                                              oo         8:
   :o:ooO                                             oo         o8
   8    oo                                            :o          8o
  oo     8o                                            OO:        :8
  8      o8:                                            O8O:       8:
 :o      :88                                             :8O       :O
 o:     ::88:                                             O8        8
 8       888:                                             O8o       O
:8       :88:                                             888Ooo:   oo
oo       oO8:                                             888888o   :O
Oo       O88           :oO88O:            oO88Oo:         O8888O    :O
O:  ::   :88      :oO888888888:          8888888888OOo:    8888:    :O
O:  :o    8o   o88888888888888:          88888888888888O:   o88     :O
Oo   oo  oO  o888888888888888O           8888888888888888o   88     :O
:O    O: oo  8888888888888888:          o88888888888888888   88     :O
 8    :o:8:  8888888888888888:::         :8888888888888888  o888o:::8O
 O:   :88:   O88888888888888888           O888888888888888  o88888888O
  o   :8O    o888888888888888O            O88888888888888O   88888888o
  O:  :8:    88888888888888O:      :      O888888888888888   O8888888:
  :O  :8     88888888888888       o88:    :o88888888888888    8888888
   OoooO    :8888888888O:8o      :8O88       :O8888888888o     O888oo
    888:     8888888o:  8O       :8o88O         O888888O:          :
    :88       oOOo:   :O:        :8:888          8o
     88              o:          88oO88o      :: :oo            :
     88::               oo      O88O:888o    O8o:   :   ::     : :
     8o o:                     o88oo O888    :8        :88   :: ::
     oO  oo     o              O8o : O888     :o       oO8o ::  O
      O:  Oo  ::o              OO    OO :             :oO88 O::O:
       O  :8: :88o             OO    Oo             :O888O  8OO:
       oo  Oo  O888o           :O:o:  :            o8888o  :O
        :O888  :88888           :o  Oo            o8888o   8:
           :8:  O8888               8            :O888O   :8
            Oo  :8888               o             :888    :O
            :O   o888  ::                         o88:    Oo
            :O    O88OO8oOOoOOoOooOooOOOOOOOOOO88O88O     O:
            OO     888:: o :o: o  o   O: 8: O o::o 8:     8
           :8O     :88o:  :    :  :      ::        8      O
           O8o      Oo:8oo:    :          :   :::oo8     :O
           88o      Oo O :ooOOOoOO:OO   :8O:O O  o O     :O
           88o      Oo :      o:o: :o    Oo : :  o       :O
           88O       :oo:oo:o o :  :: oo :: o O::o       o:
           888         :::::oO8O8OoO8O88oOOoo:         :Oo
            O88Oo::               ::                  :O
             :oO8888o                               :Oo
                 :o88o                      oo    o8O:
                    O8o                     Oo  o88o
                     o8O     Oo    o           o88
                      :88o        O:          O88
                        O88o     :8o        o88O
                          o88ooOO888O::::oO88O:
                            o8888888888888Oo

")


game_event("ITS THE FINAL SKELETON!!!!!")

input = $prompt.select("FIGHT!?", ["Yeah!", "No, I'm too scared"])

if input == "No, I'm too scared"
    game_over
end
system 'clear'

#*******************BATTLE 4*****************************************
battle("are right there in that dumpster. Wait... did you piss your pants? Hahaha how old are you!? Hahaha, anyways... I've given up this life of crime. I'm a humanitarian now! That's right, I volunteer every chance I get! Just about to head over to the children cancer ward right now. You want to come? I just bring them coloring books and perform magic tricks for them.")

victory("You spin kick the skeleton into the dumpster, fetching your parents body parts right afterwards.")

#*******************INVENTORY*******************************************

input = $prompt.select("Now that you have all your parents body parts, we can have the funeral as scheduled. It starts in 20 minutes! Hurry over so you can sew them together and get them ready!", ["Head to the funeral", "Check Inventory"])

if input == "Check Inventory"
    inventory 
end

#******************FUNERAL**************************************
game_event(" 
       _________________________
      |\ _____________________ /|                                                 
      | |_____________________| |
      |/_______________________\|
      /=========================\
     
      |  ~~       _|_        ~~ |
      |            |            |
      |_________________________|lc


")
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
    game_event("People chant your name for hours. There's buzz around town that you might win an oscar for your speech. Way to go, #{$user.name}. I'm in love with you.") 
    exit 
end

puts "it's over!"








