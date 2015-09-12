class AdminController < ApplicationController
  before_action :admin_check!

  def index
  end

  def flag
    @sent_flags = SentFlag.all
  end

  def score
    @teams = {}
    Team.all.each do |team|
      @teams.merge!({team.name => (ApplicationController.helpers.team_point team)})
    end
    @teams.sort.reverse!

    @users = []
    User.where(admin_flag: false).each do |user|
      @users.push([(ApplicationController.helpers.user_point user), user.account, user.team.name])
    end
    @users.sort!.reverse!
  end

  def team
  end

  def team_post
  end

  def team_destroy
  end
end
