class ScrappersController < ApplicationController

  def index
  end

  def scrapper
       Scrapping.new.perform
    @crypto = Scrapper.all
    redirect_to root_path
  end

end
