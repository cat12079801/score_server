module ApplicationHelper
  def team_point team
    base = team.problems.pluck(:point).sum
    team.user.each do |user|
      user.problem.each do |p|
        base += p.point / 100
      end
    end

    base
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
end
