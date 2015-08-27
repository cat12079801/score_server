class AdminTeamsController < ApplicationController
  def index
    @teams = Team.all
    @team = Team.new
  end

  def create
    @team = Team.new(params.require(:team).permit(:name))

    respond_to do |format|
      if @team.save
        format.html { redirect_to admin_teams_path, notice: 'Admin team was successfully created.' }
        format.json { render :index, status: :created, location: @team }
      else
        @teams = Team.all
        @team = Team.new
        format.html { render :index }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end
end
