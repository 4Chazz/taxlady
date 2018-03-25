class HomeController < ApplicationController

  def index
    @contact = Home.new(params[:home])
  end

  def create
    @contact = Home.new(params[:home])
    @contact.request = request
    respond_to do |format|
      if @contact.deliver
        #re-initiaize Home object for cleared form
        @contact = Home.new
        format.html {render 'index'}
        flash[:success] = "We have received your message and will be in touch soon!"

      else
        flash[:error] = "Please complete all fields."
        render :new
      end
    end
  end
end
#