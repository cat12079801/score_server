class ScoreController < ApplicationController
  def score
    @teams = {}
    Team.all.each do |team|
      @teams.merge!({team.name => (ApplicationController.helpers.team_point team)})
    end
    @teams.sort.reverse!
  end
end
