class ScoreController < ApplicationController
  def score
    @users = User.where(admin_flag: false).order('points desc').order(:updated_at)
  end
end
