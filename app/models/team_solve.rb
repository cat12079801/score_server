class TeamSolve < ActiveRecord::Base
  belongs_to :team
  belongs_to :problem
end
