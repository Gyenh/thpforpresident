class MailjetsController < ApplicationController

  def index
  end

  def mail
    MailjetService.new.perform
    @mail = Scrapper.all
    redirect_to root_path
  end
end
