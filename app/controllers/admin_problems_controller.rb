class AdminProblemsController < ApplicationController
  before_action :set_admin_problem, only: [:show, :edit, :update, :destroy]

  # GET /admin_problems
  # GET /admin_problems.json
  def index
    @admin_problems = AdminProblem.all
  end

  # GET /admin_problems/1
  # GET /admin_problems/1.json
  def show
  end

  # GET /admin_problems/new
  def new
    @admin_problem = AdminProblem.new
  end

  # GET /admin_problems/1/edit
  def edit
  end

  # POST /admin_problems
  # POST /admin_problems.json
  def create
    @admin_problem = AdminProblem.new(admin_problem_params)

    respond_to do |format|
      if @admin_problem.save
        format.html { redirect_to @admin_problem, notice: 'Admin problem was successfully created.' }
        format.json { render :show, status: :created, location: @admin_problem }
      else
        format.html { render :new }
        format.json { render json: @admin_problem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin_problems/1
  # PATCH/PUT /admin_problems/1.json
  def update
    respond_to do |format|
      if @admin_problem.update(admin_problem_params)
        format.html { redirect_to @admin_problem, notice: 'Admin problem was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_problem }
      else
        format.html { render :edit }
        format.json { render json: @admin_problem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_problems/1
  # DELETE /admin_problems/1.json
  def destroy
    @admin_problem.destroy
    respond_to do |format|
      format.html { redirect_to admin_problems_url, notice: 'Admin problem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_problem
      @admin_problem = AdminProblem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_problem_params
      params[:admin_problem]
    end
end
