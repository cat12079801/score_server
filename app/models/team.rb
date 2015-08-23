class Team < ActiveRecord::Base
  has_many :user
  has_many :team_chart
end
