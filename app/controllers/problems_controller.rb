class ProblemsController < ApplicationController
  before_action :set_problem, only: [:show, :update]

  # GET /problems
  # GET /problems.json
  def index
    @problems = Problem.where(:opened => true)
  end

  # GET /problems/1
  # GET /problems/1.json
  def show
  end

  # PATCH/PUT /problems/1
  # PATCH/PUT /problems/1.json
  def update
    if params[:problem][:flag] == @problem.flag and @problem.users.index(current_user).present?
      render json: {status: 'already'}
    elsif current_user.present? and current_user.administor? and params[:problem][:flag] == @problem.flag
      render json: {status: 'admin_success'}
    elsif current_user.present? and current_user.administor? and params[:problem][:flag] != @problem.flag
      render json: {status: 'admin'}
    elsif params[:problem][:flag] == @problem.flag
      if current_user.present?
        SentFlag.create(flag: params[:problem][:flag], user_id: current_user.id, problem_id: @problem.id, collect: true)
        @problem.users << current_user
        @problem.save
      else
        SentFlag.create(flag: params[:problem][:flag], user_id: 1, problem_id: @problem.id, collect: true)
      end

      render json: {status: 'success'}
    else
      user_id = current_user.present? ? current_user.id : 1
      SentFlag.create(flag: params[:problem][:flag], user_id: user_id, problem_id: @problem.id, collect: false)
      render json: {status: 'failure', flag: params[:problem][:flag]}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_problem
      @problem = Problem.find(params[:id])
      redirect_to problems_path unless @problem.opened
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def problem_params
      params[:problem]
    end
end
