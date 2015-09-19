class Team < ActiveRecord::Base
  has_many :user
  has_many :team_chart
  has_many :problems, through: :team_solve
  has_many :team_solve

  validates :name, presence: true, length: {in: 1..255}

  def team_point
    self.team_point_base + self.team_point_special
  end

  def team_point_base
    problems.pluck(:point).sum
  end

  def team_point_special
    special = 0
    user.each do |user|
      user.problem.each do |p|
        special += p.point / 100
      end
    end
    special
  end
end
