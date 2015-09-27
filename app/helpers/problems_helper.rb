module ProblemsHelper
  def problem_solved problem
    'class=success' if problem.users.index(current_user).nil?.!
  end
end
