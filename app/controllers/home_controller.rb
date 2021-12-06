class HomeController < ApplicationController
  


  def index
  end

  def dashboard
      @clients = Client.all
      @simcards = Simcard.all
  end
end
