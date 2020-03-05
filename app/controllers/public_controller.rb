class PublicController < ApplicationController

  def index
    @users = User.all
    @online_users = User.where("last_seen_at > ?", 2.minutes.ago)
  end

end
