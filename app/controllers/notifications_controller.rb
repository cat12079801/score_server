class NotificationsController < ApplicationController
  def index
    @notifications = Notification.where(opened: true).order('id desc').page(params[:page])
  end

  def show
    @notification = Notification.find(params[:id])
    redirect_to notifications_path unless @notification.opened
  end
end
