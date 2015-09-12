module ApplicationHelper
  def team_point team
    (team_point_base team) + (team_point_special team)
  end

  def team_point_base team
    team.problems.pluck(:point).sum
  end

  def team_point_special team
    special = 0
    team.user.each do |user|
      user.problem.each do |p|
        special += p.point / 100
      end
    end
    special
  end

  def user_point user
    (user_point_base user) + (user_point_special user)
  end

  def user_point_base user
    user.problems.pluck(:point).sum
  end

  def user_point_special user
    user.problem.pluck(:point).sum
  end
end
