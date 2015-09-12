class NotificationsController < ApplicationController
  def index
    @notifications = Notification.where(opened: true)
  end

  def show
    @notification = Notification.find(params[:id])
    redirect_to notifications_path unless @notification.opened
  end
end
