class Team < ActiveRecord::Base
  has_many :user
  has_many :team_chart

  validates :name, presence: true, length: {in: 1..255}
  validates :solved_problem, presence: true, length: {minimum: 0}
  validates :point, presence: true, numericality: {greater_than_or_equal_to: 0, only_integer: true}
end
