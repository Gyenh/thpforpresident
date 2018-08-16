class TwittersController < ApplicationController

  def index
  end

  def update_status
    TwitterBot.new.perform
    redirect_to root_path
  end

end
