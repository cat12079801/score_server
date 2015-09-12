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
