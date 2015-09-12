class AdminNotificationsController < ApplicationController
  before_action :set_admin_notification, only: [:show, :edit, :update, :destroy]
  before_action :admin_check!

  # GET /admin_notifications
  # GET /admin_notifications.json
  def index
    @admin_notifications = Notification.all
  end

  # GET /admin_notifications/1
  # GET /admin_notifications/1.json
  def show
  end

  # GET /admin_notifications/new
  def new
    @admin_notification = Notification.new
    @problems = Problem.all
  end

  # GET /admin_notifications/1/edit
  def edit
    @problems = Problem.all
  end

  # POST /admin_notifications
  # POST /admin_notifications.json
  def create
    @admin_notification = Notification.new(admin_notification_params)

    respond_to do |format|
      if @admin_notification.save
        format.html { redirect_to admin_notification_path(@admin_notification), notice: 'Admin notification was successfully created.' }
        format.json { render :show, status: :created, location: @admin_notification }
      else
        @problems = Problem.all
        format.html { render :new }
        format.json { render json: @admin_notification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin_notifications/1
  # PATCH/PUT /admin_notifications/1.json
  def update
    respond_to do |format|
      if @admin_notification.update(admin_notification_params)
        format.html { redirect_to admin_notification_path(@admin_notification), notice: 'Admin notification was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_notification }
      else
        format.html { render :edit }
        format.json { render json: @admin_notification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_notifications/1
  # DELETE /admin_notifications/1.json
  def destroy
    @admin_notification.destroy
    respond_to do |format|
      format.html { redirect_to admin_notifications_url, notice: 'Admin notification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_notification
      @admin_notification = Notification.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_notification_params
      params.require(:notification).permit(:title, :description, :problem_id)
    end
end
