class WrongNumberOfPlayersError <  StandardError ; end
class NoSuchStrategyError <  StandardError ; end

def rps_game_winner(game)

   raise WrongNumberOfPlayersError unless game.length == 2
   raise NoSuchStrategyError unless (game[0][1].downcase.match(/[rsp]/) && game[1][1].downcase.match(/[rsp]/))

   #gameHash inspired by Theresa Becker.  My initial solution
   #was a conversion to ascii and taking the difference 
   #between the respective moves.  -3 to 3 were all possible
   #outcomes.

   gameHash ={"rr"=> game[0], "sr"=> game[1], "pr"=>game[0],
              "rs"=> game[0], "ss"=> game[0], "ps"=>game[1],
              "rp"=> game[1], "sp"=> game[0], "pp"=>game[0]}

   gameString = game[0][1].downcase + game[1][1].downcase

   return gameHash[gameString]

end

def rps_tournament(matchList)

   #Base Case is matchList[0][0] is String, else recursive call:
   #Checking first element is string courtesy of Theresa Becker:
   if matchList[0][0].is_a?(String) then rps_game_winner(matchList)
   else return rps_game_winner([rps_tournament(matchList[0]), rps_tournament(matchList[1]) ])
   end

end

matchList = [
    [
            [ ["Armando", "P"], ["Dave", "S"] ],
            [ ["Richard", "R"],  ["Michael", "S"] ],
    ],

    [
          [ ["Allen", "S"], ["Omer", "P"] ],
          [ ["David E.", "R"], ["Richard X.", "P"] ]
    ]
]

p "Tournament:"
p rps_tournament(matchList)

