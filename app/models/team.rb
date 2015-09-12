class Team < ActiveRecord::Base
  has_many :user
  has_many :team_chart
  has_many :problems, through: :team_solve
  has_many :team_solve

  validates :name, presence: true, length: {in: 1..255}
end
