class Team

attr_accessor :team_name, :players, :coach

  def initialize(input_team_name, input_players, input_coach)
    @team_name = input_team_name
    @players = input_players
    @coach = input_coach
  end

  # def team_name()
  #   return @team_name
  # end
  #
  # def players
  #   return @players
  # end
  # #
  # def coach
  #   return @coach
  # end
  #
  # def update_coach(new_coach)
  #   @coach = new_coach
  # end

  def add_new_player(new_player)
    return @players.push(new_player)
  end

  def is_a_player(name)
    player_match = true
 for player in [:players]
   player_match = player if([:player] == name)
 end
 return player_match
  end
end
