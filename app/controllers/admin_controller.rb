class AdminController < ApplicationController
  before_action :admin_check!

  def index
  end

  def flag
    #@sort = params[:sort]
    #if @sort  == session[:sort]
    #  @direction = session[:direction] == 'asc' ? 'desc' : 'asc'
    #else
    #  @direction = 'desc'
    #end
    #@sort ||= 'created_at'
    #@sent_flags = SentFlag.order(@sort + ' ' + @direction).page(params[:page])
    @sent_flags = SentFlag.order('id desc').page(params[:page])
    #session[:sort] = @sort
    #session[:direction] = @direction
  end

  def score
    teams = []
    Team.all.each do |team|
      teams.push([(ApplicationController.helpers.team_point team), team.name])
    end
    teams.sort!.reverse!
    @teams = []
    teams.each.with_index(1) do |team, i|
      rank = (@teams.present? and team[0] == @teams[-1][2]) ? @teams[-1][0] : i
      @teams.push([rank, team[1], team[0]])
    end
    @teams

    users = []
    User.where(admin_flag: false).each do |user|
      users.push([(ApplicationController.helpers.user_point user), user.account, user.team.name])
    end
    users.sort!.reverse!
    @users = []
    users.each.with_index(1) do |user, i|
      rank = (@users.present? and user[0] == @users[-1][3]) ? @users[-1][0] : i
      @users.push([rank, user[1], user[2], user[0]])
    end
    @users
  end

  def team
  end

  def team_post
  end

  def team_destroy
  end
end
