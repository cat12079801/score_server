class Team < ActiveRecord::Base
  has_many :user
  has_many :team_chart
  has_many :problems, through: :team_solve
  has_many :team_solve

  validates :name, presence: true, length: {in: 1..255}
  #validates :solved_problem, length: {minimum: 0}
  validates :point, numericality: {greater_than_or_equal_to: 0, only_integer: true}
end
