class ScoreController < ApplicationController
  def score
    teams = []
    Team.all.each do |team|
      teams.push([(ApplicationController.helpers.team_point team), team.name])
    end
    teams.sort!.reverse!
    @teams = []
    teams.each.with_index(1) do |team, i|
      rank = (@teams.present? and team[0] == @teams[-1][2]) ? @teams[-1][0] : i
      @teams.push([rank, team[1], team[0]])
    end
    @teams
  end
end
