class HomeController < ApplicationController

  def index
    @contact = Home.new(params[:home])
  end

  def new
    @contact = Home.new
  end

  def create
    @contact = Home.new(params[:home])
    @contact.request = request
    respond_to do |format|
      if @contact.deliver
        #re-initiaize Home object for cleared form
        @contact = Home.new
        format.html {render 'index'}
        flash.now[:notice] = 'Thank you for your message. We will contact you soon!'

      else
        flash.now[:error] = "Please complete all fields."
        redirect_to root_path
      end
    end
  end
end
#